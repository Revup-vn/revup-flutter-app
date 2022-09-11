import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../models/pending_service_model.dart';

part 'repair_status_bloc.freezed.dart';
part 'repair_status_event.dart';
part 'repair_status_state.dart';

class RepairStatusBloc extends Bloc<RepairStatusEvent, RepairStatusState> {
  RepairStatusBloc(
    this.recordId,
    this._repairRecord,
    this.sr,
  ) : super(const _Initial()) {
    on<RepairStatusEvent>(_onEvent);

    _s = _repairRecord
        .collection()
        .doc(recordId)
        .collection('payment')
        .snapshots()
        .listen((event) {
      add(const RepairStatusEvent.started());
    });
  }
  final String recordId;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository sr;
  late final StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _s;

  FutureOr<void> _onEvent(
    RepairStatusEvent event,
    Emitter<RepairStatusState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const RepairStatusState.loading());
        final maybeRepairRecord = (await _repairRecord.get(recordId))
            .map<Option<RepairRecord>>(
              (r) => r.maybeMap(
                orElse: none,
                started: some,
              ),
            )
            .fold<Option<RepairRecord>>((l) => none(), (r) => r);

        if (maybeRepairRecord.isNone()) {
          emit(const RepairStatusState.failure());
        } else {
          final record =
              maybeRepairRecord.getOrElse(() => throw NullThrownError());
          final paymentList = (await sr
                  .repairPaymentRepo(
                    record,
                  )
                  .all())
              .fold<IList<PaymentService>>((l) => nil(), (r) => r);

          final listService = paymentList.map<PendingServiceModel>(
            (a) => PendingServiceModel.fromDto(paymentService: a),
          );

          final svProvider = (await sr
                  .repairServiceRepo(
                    AppUserDummy.dummyProvider(record.pid),
                    RepairCategoryDummy.dummy(
                      record.vehicle == 'car' ? 'Oto' : 'Xe máy',
                    ),
                  )
                  .all())
              .fold<IList<RepairService>>((l) => nil(), (r) => r);

          final listServiceImg = listService
              .map(
                (e) => e.copyWith(
                  imageUrl: svProvider
                      .find((a) => a.name == e.name)
                      .fold(() => e.imageUrl, (a) => a.img),
                ),
              )
              .sort(orderBy(StringOrder.reverse(), (a) => a.status));

          emit(
            RepairStatusState.success(
              service: listServiceImg.toList(),
              providerId: record.pid,
            ),
          );
        }
      },
      confirmService: (serviceName, productName) async {
        emit(const RepairStatusState.loading());
        final maybeRepairRecord = (await _repairRecord.get(recordId))
            .map<Option<RepairRecord>>(
              (r) => r.maybeMap(
                accepted: some,
                started: some,
                orElse: none,
              ),
            )
            .fold<Option<RepairRecord>>(
              (l) => none(),
              (r) => r,
            );

        if (maybeRepairRecord.isNone()) {
          emit(const RepairStatusState.failure());
        } else {
          final repairRecord =
              maybeRepairRecord.getOrElse(() => throw NullThrownError());
          final maybeService = (await (sr.repairServiceRepo(
            AppUserDummy.dummyProvider(repairRecord.pid),
            RepairCategoryDummy.dummy(
              repairRecord.vehicle == 'car' ? 'Oto' : 'Xe máy',
            ),
          )).get(serviceName))
              .toOption();

          if (maybeService.isNone()) {
            return;
          } else {
            final service =
                maybeService.getOrElse(() => throw NullThrownError());
            final maybeProduct = (await sr
                    .repairProductRepo(
                      AppUserDummy.dummyProvider(repairRecord.pid),
                      RepairCategoryDummy.dummy(
                        repairRecord.vehicle == 'car' ? 'Oto' : 'Xe máy',
                      ),
                      RepairServiceDummy.dummy(service.name),
                    )
                    .get(productName))
                .fold<Option<RepairProduct>>((l) => none(), some);

            if (maybeProduct.isNone()) {
              return;
            } else {
              final product = maybeProduct.getOrElse(
                () => throw NullThrownError(),
              );
              await (sr.repairPaymentRepo(
                RepairRecordDummy.dummyStarted(recordId),
              )).update(
                PaymentService.pending(
                  serviceName: service.name,
                  moneyAmount: service.fee,
                  products: [
                    PaymentProduct(
                      name: product.name,
                      unitPrice: product.price,
                      quantity: 1,
                    )
                  ],
                  isOptional: false,
                ),
              );
            }
          }
        }
      },
    );
  }

  @override
  Future<void> close() async {
    await _s?.cancel();
    return super.close();
  }
}
