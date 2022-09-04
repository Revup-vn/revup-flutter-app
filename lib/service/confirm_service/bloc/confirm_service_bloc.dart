import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../../order/models/pending_repair_request.dart';
import '../../../order/models/pending_service_model.dart';
import '../../../repairer_profile/models/service_data.u.dart';

part 'confirm_service_bloc.freezed.dart';
part 'confirm_service_event.dart';
part 'confirm_service_state.dart';

class ConfirmServiceBloc
    extends Bloc<ConfirmServiceEvent, ConfirmServiceState> {
  ConfirmServiceBloc(
    this._userStore,
    this._repairRecord,
    this.storeRepository,
    this.providerId,
    this._maybeUser,
  ) : super(const _Initial()) {
    on<ConfirmServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final optionalService = <ServiceData>[];
  final String providerId;
  final Option<AppUser> _maybeUser;

  FutureOr<void> _onEvent(
    ConfirmServiceEvent event,
    Emitter<ConfirmServiceState> emit,
  ) async {
    await event.when(
      detailRequestAccepted: (recordId, optionalService) async {
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

        final maybeProviderData = (await _userStore.get(pendingRequest.pid))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());

        final catId = pendingRequest.vehicle == 'car' ? 'Oto' : 'Xe máy';
        final catAndSv = await (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).get(catId))
            .map(
              (a) async => tuple2<RepairCategory, IList<ServiceData>>(
                a,
                (await storeRepository
                        .repairServiceRepo(maybeProviderData, a)
                        .all())
                    .fold<IList<ServiceData>>(
                  (l) => ilist([]),
                  (r) => r.map(
                    ServiceData.fromDtos,
                  ),
                ),
              ),
            )
            .fold((l) => throw NullThrownError(), (r) => r);
        final svDataOptional = pendingService.map(
          ServiceData.fromPendingService,
        );
        final lst = catAndSv.value2.toList()
          ..removeWhere(
            (e) => svDataOptional.any((a) => a.name == e.name),
          );
        final tmp = IList.from(
          optionalService.map(
            (e) => ServiceData(
              name: e.name,
              serviceFee: -1,
              imageURL: e.img,
              products: [],
              isOptional: true,
            ),
          ),
        );
        emit(
          ConfirmServiceState.orderModify(
            serviceData: ilist(lst).plus(svDataOptional).plus(tmp),
            catAndSv: catAndSv,
            pendingService: pendingService.toList(),
            providerId: providerId,
          ),
        );
      },
      selectProductCompleted: (onRoute, saveLst, recordId) async {
        // create list pending payment service
        final _paymentRepo = storeRepository
            .repairPaymentRepo(RepairRecordDummy.dummyPending(recordId));
        final payment = (await _paymentRepo.all())
            .fold((l) => nil<PaymentService>(), (r) => r)
            .toList();
        final paymentNotRm = payment
            .where(
              (element) => saveLst.any((e) => e.name == element.serviceName),
            )
            .toList();
        payment.removeWhere(
          paymentNotRm.contains,
        );
        for (var i = 0; i < payment.length; i++) {
          await _paymentRepo.delete(payment[i].serviceName);
        }

        onRoute();
      },
    );
  }
}
