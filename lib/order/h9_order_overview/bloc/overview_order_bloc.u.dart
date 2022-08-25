import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../models/need_to_verify_model.dart';
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
  }
  final String providerId;
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final String recordId;
  FutureOr<void> _onEvent(
    OverviewOrderEvent event,
    Emitter<OverviewOrderState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const OverviewOrderState.loading());
        // get provider data
        final maybeProviderData = (await _userStore.get(providerId))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        final boxLocation = Hive.box<dynamic>('location');
        final distance = boxLocation.get('distance', defaultValue: 0) as double;
        // get service selected
        final repairRecord = (await _repairRecord.get(recordId))
            .map<Option<RepairRecord>>(
              (r) => r.maybeMap(
                accepted: some,
                orElse: none,
              ),
            )
            .fold<Option<RepairRecord>>(
              (l) => none(),
              (r) => r,
            )
            .getOrElse(() => throw NullThrownError());
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

        final pendingAmount = pendingService
            .map(
              (a) => a.price,
            )
            .foldLeft(pendingRequest.money, (int previous, a) => previous + a);

        final services = (await (storeRepository.repairPaymentRepo(
          RepairRecordDummy.dummyPending(recordId),
        )).all())
            .map<IList<PaymentService>>(
              (r) => r.filter(
                (a) => a.maybeMap(
                  paid: (_) => false,
                  orElse: () => true,
                ),
              ),
            )
            .map(
              (r) => r
                  .map(
                    (a) => a.map(
                      pending: (v) => PendingServiceModel(
                        name: v.serviceName,
                        price: v.moneyAmount +
                            (v.products.isEmpty
                                ? 0
                                : v.products
                                    .map((e) => e.quantity * e.unitPrice)
                                    .reduce(
                                      (value, element) => value + element,
                                    )),
                        isOptional: v.isOptional,
                        products: v.products,
                      ),
                      paid: (v) => throw NullThrownError(),
                      needToVerify: (v) => NeedToVerifyModel(
                        serviceName: v.serviceName,
                        desc: v.desc,
                      ),
                    ),
                  )
                  .partition((a) => a is NeedToVerifyModel)
                  .apply(
                (a, b) {
                  emit(
                    OverviewOrderState.loadDataSuccess(
                      overviewOrderData: OverviewOrderModel.fromDto(
                        maybeProviderData,
                        distance / 1000,
                      ),
                      pendingService: b.toList().cast<PendingServiceModel>(),
                      needToVerifyService: a.toList().cast<NeedToVerifyModel>(),
                      pendingRequest: pendingRequest,
                      total: pendingAmount,
                    ),
                  );
                },
              ),
            );
        // .fold((l) => nil<PaymentService>(), (r) => r);
      },
    );
  }
}
