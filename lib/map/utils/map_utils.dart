import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<Position> determinePosition() async {
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

  return Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );
}

void fitPolylineToView(List<PointLatLng> p, GoogleMapController? controller) {
  var minLat = p.first.latitude;
  var minLng = p.first.longitude;
  var maxLat = p.first.latitude;
  var maxLng = p.first.longitude;
  for (final e in p) {
    if (e.latitude < minLat) minLat = e.latitude;
    if (e.latitude > maxLat) maxLat = e.latitude;
    if (e.longitude < minLng) minLng = e.longitude;
    if (e.longitude > maxLng) maxLng = e.longitude;
  }
  controller!.animateCamera(
    CameraUpdate.newLatLngBounds(
      LatLngBounds(
        southwest: LatLng(minLat, minLng),
        northeast: LatLng(maxLat, maxLng),
      ),
      100,
    ),
  );
}
