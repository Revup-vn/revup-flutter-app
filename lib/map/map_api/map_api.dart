import 'dart:async';

import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../configs/map_config.dart';
import '../models/directions_model.dart';

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
