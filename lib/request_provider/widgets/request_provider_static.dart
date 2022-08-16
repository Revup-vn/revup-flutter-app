import 'package:flutter/material.dart';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../map/models/directions_model.dart';
import '../../map/utils/map_utils.dart';

class RequestProviderStatic extends StatefulWidget {
  const RequestProviderStatic({
    super.key,
    required this.providerData,
    required this.directions,
    required this.fromMaker,
    required this.toMarker,
    required this.movingFees,
  });
  final ProviderData providerData;
  final Directions directions;
  final Marker fromMaker;
  final Marker toMarker;
  final int movingFees;

  @override
  State<RequestProviderStatic> createState() => _RequestProviderStaticState();
}

class _RequestProviderStaticState extends State<RequestProviderStatic> {
  late CameraPosition _initialLocation;
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  late LatLng _startCoordinate;

  PolylinePoints? polylinePoints;
  List<LatLng> polylineCoordinates = [];

  @override
  void initState() {
    _startCoordinate = LatLng(
      widget.fromMaker.position.latitude,
      widget.fromMaker.position.longitude,
    );
    _initialLocation = CameraPosition(target: _startCoordinate, zoom: 15);
    markers
      ..add(widget.fromMaker)
      ..add(widget.toMarker);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      padding: const EdgeInsets.only(bottom: 320),
      initialCameraPosition: _initialLocation,
      onMapCreated: (GoogleMapController controller) {
        mapController = controller;
        fitPolylineToView(widget.directions.polylinePoints, controller);
      },
      markers: Set<Marker>.from(markers),
      polylines: {
        Polyline(
          polylineId: const PolylineId('polyline'),
          color: Colors.red,
          width: 5,
          points: widget.directions.polylinePoints
              .map((e) => LatLng(e.latitude, e.longitude))
              .toList(),
        ),
      },
    );
  }
}
