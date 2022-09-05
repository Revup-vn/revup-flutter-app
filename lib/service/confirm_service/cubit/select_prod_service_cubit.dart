import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../../order/models/models.dart';
import '../../../order/models/pending_service_model.dart';
import '../../../repairer_profile/models/service_data.u.dart';

part 'select_prod_service_cubit.freezed.dart';
part 'select_prod_service_state.dart';

class SelectProdServiceCubit extends Cubit<SelectProdServiceState> {
  SelectProdServiceCubit(
    this._userStore,
    this._repairRecord,
    this.storeRepository,
    this.recordId,
    this._paymentService,
  ) : super(const SelectProdServiceState.initial());
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final IStore<PaymentService> _paymentService;
  final StoreRepository storeRepository;
  final String recordId;
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _s;

  Future<Unit> watch() async {
    _s = _paymentService.collection().snapshots().listen((event) async {
      if (event.size == 0) {
        emit(const SelectProdServiceState.failure());
      } else {
        final pendingService = (await storeRepository
                .repairPaymentRepo(RepairRecordDummy.dummyAccepted(recordId))
                .all())
            .map(
              (r) => r.filter(
                (a) => a.maybeMap(
                  pending: (v) => true,
                  needToVerify: (v) => true,
                  orElse: () => false,
                ),
              ),
            )
            .map(
              (r) =>
                  r.map((a) => PendingServiceModel.fromDto(paymentService: a)),
            )
            .fold<IList<PendingServiceModel>>((l) => nil(), (r) => r);

        final mbRR = (await _repairRecord.get(recordId))
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
        if (mbRR.isNone()) {
          emit(const SelectProdServiceState.failure());
        } else {
          final repairRecord = mbRR.getOrElse(() => throw NullThrownError());
          final services = (await storeRepository
                  .repairServiceRepo(
                    AppUserDummy.dummyProvider(repairRecord.pid),
                    RepairCategoryDummy.dummy(
                        repairRecord.vehicle == 'car' ? 'Oto' : 'Xe máy'),
                  )
                  .all())
              .fold<IList<ServiceData>>(
            (l) => nil(),
            (r) => r.map(ServiceData.fromDtos),
          );
          final svDataOptional =
              pendingService.map(ServiceData.fromPendingService);
          final lst = services.toList()
            ..removeWhere((e) => svDataOptional.any((a) => a.name == e.name));
          emit(
            SelectProdServiceState.success(
              providerId: repairRecord.pid,
              serviceData: ilist(lst).plus(svDataOptional),
              pendingService: pendingService.toList(),
            ),
          );
        }
      }
    });
    return unit;
  }

  @override
  Future<void> close() async {
    await _s?.cancel();
    return super.close();
  }
}
