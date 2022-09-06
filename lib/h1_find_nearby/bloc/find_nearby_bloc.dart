import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../map/map_api/map_api.dart';

part 'find_nearby_bloc.freezed.dart';
part 'find_nearby_event.dart';
part 'find_nearby_state.dart';

class FindNearbyBloc extends Bloc<FindNearbyEvent, FindNearbyState> {
  FindNearbyBloc() : super(const _Initial()) {
    on<FindNearbyEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    FindNearbyEvent event,
    Emitter<FindNearbyState> emit,
  ) async {
    await event.when(
      started: (lat, lng) async {
        try {
          emit(const FindNearbyState.loading());
          final address = await getAddress(LatLng(lat, lng));
          emit(FindNearbyState.loaded(addr: address));
        } catch (e) {
          emit(const FindNearbyState.failure());
        }
      },
      submitted: (lat, lng, onRoute) async {
        final boxLocation = Hive.box<dynamic>('location');
        await boxLocation.put('repairLat', lat);
        await boxLocation.put('repairLng', lng);
        final boxRprRecord = await Hive.openBox<dynamic>('repairRecord');
        await boxRprRecord.put('toLat', lat);
        await boxRprRecord.put('toLng', lng);
        onRoute();
      },
    );
  }
}
