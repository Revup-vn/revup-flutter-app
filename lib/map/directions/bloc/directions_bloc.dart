import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../configs/map_config.dart';
import '../../models/directions_model.dart';

part 'directions_event.dart';
part 'directions_state.dart';
part 'directions_bloc.freezed.dart';

class DirectionsBloc extends Bloc<DirectionsEvent, DirectionsState> {
  DirectionsBloc() : super(const _Initial()) {
    on<DirectionsEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    DirectionsEvent event,
    Emitter<DirectionsState> emit,
  ) async {
    await event.when(
      started: () {},
      directions: (LatLng origin, LatLng destination) async {
        final directions = await getDirections(origin, destination);
        emit(DirectionsState.directionsLoaded(directions: directions));
      },
    );
  }

  Future<Directions> getDirections(LatLng origin, LatLng destination) async {
    const url = 'https://maps.googleapis.com/maps/api/directions/json?';
    final response = await Dio().get<Map<String, dynamic>>(
      url,
      queryParameters: <String, String>{
        'origin': '${origin.latitude},${origin.longitude}',
        'destination': '${destination.latitude},${destination.longitude}',
        'key': ggMapKey,
      },
      options: Options(responseType: ResponseType.json),
    );
    final results = Directions.fromMap(response.data!);

    return results;
  }
}
