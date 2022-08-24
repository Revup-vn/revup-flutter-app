import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    this.catAndSv,
  ) : super(const _Initial()) {
    on<ServiceDetailsEvent>(_onEvent);
  }

  final ServiceData _serviceData;
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;
  final String _providerId;
  final IStore<AppUser> _userStore;
  final StoreRepository storeRepository;

  FutureOr<void> _onEvent(
    ServiceDetailsEvent event,
    Emitter<ServiceDetailsState> emit,
  ) async {
    await event.when(
      started: () async {
        final maybeProviderData = (await _userStore.get(_providerId))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());

        final maybeService = (await (storeRepository.repairServiceRepo(
          maybeProviderData,
          catAndSv.value1,
        )).get(_serviceData.name))
            .fold<Option<RepairService>>((l) => none(), some)
            .getOrElse(() => throw NullThrownError());

        final products = (await storeRepository
                .repairProductRepo(
                  maybeProviderData,
                  catAndSv.value1,
                  maybeService,
                )
                .all())
            .fold<IList<RepairProduct>>((l) => ilist([]), (r) => r);

        emit(ServiceDetailsState.loaded(products: products));
      },
    );
  }
}
