import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';

part 'choose_service_bloc.freezed.dart';
part 'choose_service_event.dart';
part 'choose_service_state.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc(this._userStore, this._repairRecord, this.storeRepository)
      : super(const _Initial()) {
    on<ChooseServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository storeRepository;
  final categoryList = <Tuple2<RepairCategory, IList<ServiceData>>>[];
  final services = <ServiceData>[];
  FutureOr<void> _onEvent(
    ChooseServiceEvent event,
    Emitter<ChooseServiceState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const ChooseServiceState.loading());
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final pid = boxRprRecord.get('pid', defaultValue: '') as String;
        final maybeProviderData = (await _userStore.get(pid))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        final catData = (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).all())
            .map(
              (r) => r.map(
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
              ),
            )
            .fold<IList<Future<Tuple2<RepairCategory, IList<ServiceData>>>>>(
              (l) => throw NullThrownError(),
              (r) => r,
            );

        final categories =
            (await Future.wait(catData.toIterable())).map((e) => e).toList();

        final svList = categories.map((e) => e.value2).fold<IList<ServiceData>>(
              ilist(<ServiceData>[]),
              (previousValue, element) =>
                  IListMonoid<ServiceData>().append(previousValue, element),
            );
        services.addAll(svList.toIterable());
        emit(
          ChooseServiceState.success(
            serviceData: svList,
            categories: categories,
            providerId: pid,
          ),
        );
      },
      serviceListSubmitted: () {
        emit(const ChooseServiceState.loading());
      },
      newServiceRequested: (optionalService) {
        emit(const ChooseServiceState.loading());
        final newSvData = ServiceData(
          name: optionalService.name,
          serviceFee: -1,
          imageURL: optionalService.img,
        );
        services.add(newSvData);
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final pid = boxRprRecord.get('pid', defaultValue: '') as String;
        emit(
          ChooseServiceState.success(
            serviceData: ilist(services),
            categories: categoryList,
            providerId: pid,
          ),
        );
      },
      serviceSelectChanged: (serviceData, isSelected) async {
        // final boxServiceSelect = await Hive.box<dynamic>('repairRecord');
        // boxServiceSelect.put('services', value);
        // services.map((e) {
        //   if (e.id == serviceData.id) {
        //     e.copyWith(isSelected: isSelected);
        //   }
        // });
      },
      detailRequestAccepted: (String recordId) {
        // emit(
        //   ChooseServiceState.orderModify(
        //     services.appendElement(serSelected),
        //   ),
        // );
      },
    );
  }
}
