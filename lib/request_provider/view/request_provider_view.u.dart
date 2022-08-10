import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../map/location/bloc/location_bloc.dart';
import '../../map/utils/map_utils.dart';
import '../bloc/request_provider_bloc.dart';
import '../widgets/request_provider_failure.dart';

class RequestProviderView extends StatefulWidget {
  const RequestProviderView({super.key, required this.providerData});
  final ProviderData providerData;

  @override
  State<RequestProviderView> createState() => _RequestProviderViewState();
}

class _RequestProviderViewState extends State<RequestProviderView> {
  GoogleMapController? mapController;
  late Position currentLocation;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.watch<RequestProviderBloc>();
    final blocLocation = context.watch<LocationBloc>();
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const RequestProviderEvent.started()),
    );
    blocLocation.state.whenOrNull(
      directionsLoaded: (directions) {
        fitPolylineToView(directions.polylinePoints, mapController);
      },
    );

    return BlocBuilder<RequestProviderBloc, RequestProviderState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          success: (directions, fromMaker, toMarker, movingFees) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              body: Stack(
                children: [
                  GoogleMap(
                    padding: const EdgeInsets.only(bottom: 320),
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        toMarker.position.latitude,
                        toMarker.position.longitude,
                      ),
                      zoom: 15,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                      blocLocation.add(
                        LocationEvent.mapLoaded(
                          directions: directions,
                        ),
                      );
                    },
                    markers: {fromMaker, toMarker},
                    polylines: {
                      Polyline(
                        polylineId: const PolylineId('polyline'),
                        color: Colors.red,
                        width: 5,
                        points: directions.polylinePoints
                            .map((e) => LatLng(e.latitude, e.longitude))
                            .toList(),
                      ),
                    },
                  ),
                ],
              ),
            );
          },
          failure: RequestProviderFailure.new,
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
