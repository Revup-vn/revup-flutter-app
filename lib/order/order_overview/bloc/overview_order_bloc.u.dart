import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../models/overview_order_model.dart';

part 'overview_order_bloc.u.freezed.dart';
part 'overview_order_event.dart';
part 'overview_order_state.dart';

class OverviewOrderBloc extends Bloc<OverviewOrderEvent, OverviewOrderState> {
  OverviewOrderBloc(
    this.providerID,
    this._userStore,
    this.storeRepository,
  ) : super(const _Initial()) {
    on<OverviewOrderEvent>(_onEvent);
  }
  final String providerID;
  final IStore<AppUser> _userStore;
  final StoreRepository storeRepository;
  FutureOr<void> _onEvent(
    OverviewOrderEvent event,
    Emitter<OverviewOrderState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const OverviewOrderState.loading());
        // final boxRprRecord = Hive.box<dynamic>('repairRecord');
        // final pid = boxRprRecord.get('pid', defaultValue: '') as String;
        final maybeProviderData = (await _userStore.get(providerID))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());
        OverviewOrderModel.fromDto(maybeProviderData, 100);
        final boxServiceSelect = await Hive.openBox<dynamic>('serviceSelect');
        await boxServiceSelect.put('1', 2);
        await boxServiceSelect.put('2', 3);
        await boxServiceSelect.put('3', 4);
        emit(
          OverviewOrderState.loadDataSuccess(
            overviewOrderData: OverviewOrderModel.fromDto(
              maybeProviderData,
              0, // TODO(cantgim): save quotas Directions API
            ),
            serviceCount: boxServiceSelect.length,
          ),
        );
      },
    );
  }
}
