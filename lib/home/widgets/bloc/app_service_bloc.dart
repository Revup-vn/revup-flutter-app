import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'app_service_bloc.freezed.dart';
part 'app_service_event.dart';
part 'app_service_state.dart';

class AppServiceBloc extends Bloc<AppServiceEvent, AppServiceState> {
  AppServiceBloc() : super(const _Initial()) {
    on<AppServiceEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    AppServiceEvent event,
    Emitter<AppServiceState> emit,
  ) async {
    await event.when(
      started: (vehicle) async {
        final boxRprRecord = await Hive.openBox<dynamic>('repairRecord');
        await boxRprRecord.put('vehicle', vehicle);
        final boxLocation = Hive.box<dynamic>('location');
        final lat = boxLocation.get('currentLat') as double;
        final lng = boxLocation.get('currentLng') as double;
        final location = LatLng(lat, lng);
        emit(
          AppServiceState.success(
            currentLocation: location,
            vehicle: vehicle,
          ),
        );
      },
    );
  }
}
