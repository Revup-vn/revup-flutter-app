import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../models/pending_repair_request.dart';
import '../../models/pending_service_model.dart';
import '../models/overview_order_model.dart';

part 'overview_order_bloc.u.freezed.dart';
part 'overview_order_event.dart';
part 'overview_order_state.dart';

class OverviewOrderBloc extends Bloc<OverviewOrderEvent, OverviewOrderState> {
  OverviewOrderBloc(
    this.providerId,
    this._userStore,
    this.storeRepository,
    this._repairRecord,
    this.recordId,
  ) : super(const _Initial()) {
    on<OverviewOrderEvent>(_onEvent);
    _s = _repairRecord
        .collection()
        .doc(recordId)
        .collection('payment')
        .snapshots()
        .listen((event) {
      add(const OverviewOrderEvent.started());
    });
  }
  final String providerId;
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final String recordId;
  late final StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _s;

  FutureOr<void> _onEvent(
    OverviewOrderEvent event,
    Emitter<OverviewOrderState> emit,
  ) async {
    await event.when(
      cancel: (onRoute, sendMessage) async {
        emit(const OverviewOrderState.loading());
        final record = (await _repairRecord.get(recordId)).getOrElse(
          () => throw NullThrownError(),
        );
        await _repairRecord.update(
          RepairRecord.aborted(
            id: recordId,
            cid: record.cid,
            pid: record.pid,
            created: record.created,
            desc: record.desc,
            vehicle: record.vehicle,
            money: record.money,
            from: record.from,
            to: record.to,
          ),
          record,
        );
        final tokens = (await storeRepository
                .userNotificationTokenRepo(
                  AppUserDummy.dummyConsumer(record.pid),
                )
                .all())
            .map(
              (r) => r.toList()
                ..sort(
                  (a, b) => b.created.millisecondsSinceEpoch
                      .compareTo(a.created.millisecondsSinceEpoch),
                ),
            )
            .fold((l) => throw NullThrownError(), (r) => r);
        sendMessage(tokens[0].token, recordId);
        onRoute();
      },
      started: () async {
        emit(const OverviewOrderState.loading());
        // get provider data
        final maybeProviderData =
            (await _userStore.get(providerId)).fold<Option<AppUser>>(
          (l) => none(),
          some,
        );
        if (maybeProviderData.isNone()) {
          emit(const OverviewOrderState.failure());
        } else {
          final provData =
              maybeProviderData.getOrElse(() => throw NullThrownError());

          final boxLocation = Hive.box<dynamic>('location');
          final distance = boxLocation.get('distance', defaultValue: 0) as num;
          // get service selected
          final maybeRepairRecord = (await _repairRecord.get(recordId))
              .map<Option<RepairRecord>>(
                (r) => r.maybeMap(
                  accepted: some,
                  orElse: none,
                ),
              )
              .fold<Option<RepairRecord>>(
                (l) => none(),
                (r) => r,
              );
          if (maybeRepairRecord.isNone()) {
            emit(const OverviewOrderState.failure());
          } else {
            final repairRecord =
                maybeRepairRecord.getOrElse(() => throw NullThrownError());
            final pendingRequest =
                PendingRepairRequest.fromDto(repairRecord: repairRecord);

            final pendingService = (await (storeRepository.repairPaymentRepo(
              RepairRecordDummy.dummyPending(recordId),
            )).all())
                .map(
                  (r) => r.map<Option<PendingServiceModel>>(
                    (a) => a.maybeMap(
                      pending: (v) =>
                          some(PendingServiceModel.fromDto(paymentService: v)),
                      needToVerify: (v) =>
                          some(PendingServiceModel.fromDto(paymentService: v)),
                      orElse: none,
                    ),
                  ),
                )
                .fold((l) => ilist(<Option<PendingServiceModel>>[]), (r) => r)
                .filter(
                  (a) => a.isSome(),
                )
                .map(
                  (a) => a.getOrElse(() => throw NullThrownError()),
                );

            final len = (await (storeRepository.repairPaymentRepo(
              RepairRecordDummy.dummyPending(recordId),
            )).all())
                .map(
                  (r) => r.filter(
                    (a) => a.map(
                      pending: (v) => v.serviceName != 'transFee',
                      paid: (v) => false,
                      needToVerify: (v) => true,
                    ),
                  ),
                )
                .fold((l) => ilist(<Option<PendingServiceModel>>[]), (r) => r)
                .length();

            final pendingAmount = pendingService
                .map(
                  (a) => a.price,
                )
                .foldLeft(
                  pendingRequest.money,
                  (int previous, a) => previous + a,
                );

            emit(
              OverviewOrderState.loadDataSuccess(
                overviewOrderData: OverviewOrderModel.fromDto(
                  provData,
                  distance / 1000,
                ),
                pendingService: pendingService.toList(),
                pendingRequest: pendingRequest,
                total: pendingAmount,
                len: len,
              ),
            );
          }
        }
      },
      submitted: (
        onRoute,
        sendMessage,
      ) async {
        // get latest consumer fcm token
        final provider = (await _userStore.get(providerId))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        final tokens =
            (await storeRepository.userNotificationTokenRepo(provider).all())
                .map(
                  (r) => r.sort(
                    orderBy(StringOrder.reverse(), (a) => a.created.toString()),
                  ),
                )
                .fold((l) => throw NullThrownError(), (r) => r.toList());
        log('TOKEN:${tokens.first.token}');

        sendMessage(tokens.first.token, providerId);

        onRoute();
      },
    );
  }

  @override
  Future<void> close() async {
    await _s?.cancel();
    return super.close();
  }
}
