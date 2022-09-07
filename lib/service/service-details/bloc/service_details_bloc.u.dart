import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';

part 'service_details_bloc.u.freezed.dart';
part 'service_details_event.dart';
part 'service_details_state.dart';

class ServiceDetailsBloc
    extends Bloc<ServiceDetailsEvent, ServiceDetailsState> {
  ServiceDetailsBloc(
    this._serviceData,
    this._userStore,
    this.storeRepository,
    this._providerId,
  ) : super(const _Initial()) {
    on<ServiceDetailsEvent>(_onEvent);
  }

  final ServiceData _serviceData;
  final String _providerId;
  final IStore<AppUser> _userStore;
  final StoreRepository storeRepository;

  FutureOr<void> _onEvent(
    ServiceDetailsEvent event,
    Emitter<ServiceDetailsState> emit,
  ) async {
    await event.when(
      started: () async {
        final boxRR = Hive.box<dynamic>('repairRecord');
        final vehicle =
            (boxRR.get('vehicle') as String) == 'car' ? 'Oto' : 'Xe máy';
        final completer = Completer<IList<RepairProduct>>();
        (await (storeRepository.repairServiceRepo(
          AppUserDummy.dummyProvider(_providerId),
          RepairCategoryDummy.dummy(vehicle),
        )).get(_serviceData.name))
            .fold((l) => completer.complete(nil<RepairProduct>()), (r) async {
          (await storeRepository
                  .repairProductRepo(
                    AppUserDummy.dummyProvider(_providerId),
                    RepairCategoryDummy.dummy(vehicle),
                    r,
                  )
                  .where('active', isEqualTo: true))
              .fold((l) => completer.complete(nil()), completer.complete);
        });
        final res = await completer.future;
        emit(ServiceDetailsState.loaded(products: res));
      },
    );
  }
}
