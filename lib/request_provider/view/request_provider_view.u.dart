import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../l10n/l10n.dart';
import '../../map/directions/bloc/directions_bloc.dart';
import '../../map/map_api/map_api.dart';
import '../../map/models/directions_model.dart';
import '../../service/widgets/service_avatar.dart';

class RequestProviderView extends StatefulWidget {
  const RequestProviderView({super.key});

  @override
  State<RequestProviderView> createState() => _RequestProviderViewState();
}

class _RequestProviderViewState extends State<RequestProviderView> {
  late GoogleMapController mapController;
  late Position currentLocation;

  Directions? directions;

  final _origin = const Marker(
    markerId: MarkerId('origin'),
    position: LatLng(
      21.028474792451046,
      105.82760041781349,
    ),
  );
  final _destination = const Marker(
    markerId: MarkerId('destination'),
    position: LatLng(
      21.024568638270676,
      105.84099205717699,
    ),
  );

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(21.028073990063895, 105.83399703832497),
    zoom: 15,
  );
  @override
  void initState() {
    super.initState();
    _drawPolylineTest();
  }

  // ignore: avoid_void_async
  void _drawPolylineTest() async {
    directions = await getDirections(_origin.position, _destination.position);
  }

  // ignore: use_setters_to_change_properties
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    // context.read<LocationBloc>().add(const LocationEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocConsumer<DirectionsBloc, DirectionsState>(
      listener: (context, state) {
        state.whenOrNull(
          directionsLoaded: (directions) {
            mapController.animateCamera(
              CameraUpdate.newLatLngBounds(directions.bounds, 100),
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              BlocBuilder<DirectionsBloc, DirectionsState>(
                builder: (context, state) {
                  return GoogleMap(
                    padding: const EdgeInsets.only(bottom: 320),
                    initialCameraPosition: _initialCameraPosition,
                    onMapCreated: _onMapCreated,
                    myLocationEnabled: true,
                    markers: {_origin, _destination},
                    polylines: {
                      Polyline(
                        polylineId: const PolylineId('polyline'),
                        color: Colors.red,
                        width: 5,
                        points: directions?.polylinePoints
                                .map((e) => LatLng(e.latitude, e.longitude))
                                .toList() ??
                            [],
                      ),
                    },
                  );
                },
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: AutoSizeText(
                            l10n.paymentFeeOfTransportLabel,
                            style: Theme.of(context).textTheme.titleLarge ??
                                const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: 120,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 0.7,
                                child: Column(
                                  children: [
                                    const ServiceAvatar(
                                      imageUrl:
                                          'https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                                    ),
                                    const AutoSizeText(
                                      'Nguyễn Văn A',
                                      maxLines: 1,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        AutoSizeText(
                                          '4.9',
                                          maxLines: 1,
                                        ),
                                        Icon(Icons.star_rate_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: const [
                                      AutoSizeText(
                                        '''Địa chỉ: 77 Khuất Duy Tiến, Nhân Chính, Thanh Xuân, Hà Nội''',
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      AutoSizeText(
                                        '''Lưu ý : Đây là phí di chuyển chưa bao gồm giá dịch vụ sửa chữa''',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AutoSizeText('Phí di chuyển'),
                            AutoSizeText('12.000đ'),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  // TODO(cantgim): implement sthgs
                                },
                                child: Row(
                                  children: const [
                                    Icon(Icons.paid),
                                    AutoSizeText('Tiền mặt'),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // TODO(cantgim): implement sthg
                                },
                                child: Row(
                                  children: const [
                                    Icon(Icons.local_offer),
                                    AutoSizeText('Ưu đãi'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // TODO(cantgim): call bloc find nearby pro online
                          },
                          child: AutoSizeText(l10n.callForHelpLabel),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
