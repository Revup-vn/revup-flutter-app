import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../configs/map_config.dart';
import '../../../shared/preferences.dart';
import '../../models/directions_model.dart';
import '../../models/place_details_model.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const LocationState.loading()) {
    on<LocationEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    LocationEvent event,
    Emitter<LocationState> emit,
  ) async {
    await event.when(
      started: () async {
        final location = await _determinePosition();
        emit(LocationState.initial(location: location));
      },
      locationUpdated: (location) async {
        final address =
            await getAddress(LatLng(location.latitude, location.longitude));
        emit(LocationState.addressLoaded(address: address));
      },
      placeSearch: (String placeId) async {
        final placeDetails = await getPlaceDetails(placeId);
        emit(LocationState.placeDetailsLoaded(placeDetails: placeDetails));
        final address = await getAddress(
          LatLng(
            placeDetails.geometry.location.lat,
            placeDetails.geometry.location.lng,
          ),
        );
        emit(LocationState.addressLoaded(address: address));
      },
      saved: (LatLng location) async {
        final prefs = await Preferences.getInstance();
        await prefs.saveCurrentLocation(location);
      },
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        '''Location permissions are permanently denied, we cannot request permissions.''',
      );
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  Future<String> getAddress(LatLng position) async {
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$ggMapKey';

    final response = await Dio().get<Map<String, dynamic>>(
      url,
      options: Options(responseType: ResponseType.json),
    );

    final formattedAddress = ((response.data!['results'] as List<dynamic>)[0]
            as Map<String, dynamic>)['formatted_address']
        .toString();
    return await Future.value(formattedAddress);
  }

  Future<PlaceDetails> getPlaceDetails(String placeId) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$ggMapKey';

    final response = await Dio().get<Map<String, dynamic>>(
      url,
      options: Options(responseType: ResponseType.json),
    );

    final results = response.data!['result'] as Map<String, dynamic>;

    return PlaceDetails.fromJson(results);
  }
}
