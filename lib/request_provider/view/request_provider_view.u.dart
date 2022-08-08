import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../map/location/bloc/location_bloc.dart';
import '../../map/utils/map_utils.dart';
import '../../router/router.dart';
import '../../service/widgets/service_avatar.dart';
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
              appBar: AppBar(),
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
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 28,
                        ),
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
                                        ServiceAvatar(
                                          imageUrl: widget.providerData.avatar,
                                        ),
                                        AutoSizeText(
                                          widget.providerData.fullName,
                                          maxLines: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            AutoSizeText(
                                              widget.providerData.rating
                                                  .toString(),
                                              maxLines: 1,
                                            ),
                                            const Icon(Icons.star_rate_rounded),
                                            AutoSizeText(
                                              '''(${widget.providerData.ratingCount.toString()})''',
                                              maxLines: 1,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        children: [
                                          AutoSizeText(
                                            '''${l10n.addressLabel}: ${widget.providerData.address}''',
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          AutoSizeText(
                                            '''${l10n.noteLabel}: ${l10n.noteMovingFeeLabel}''',
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
                              children: [
                                AutoSizeText(l10n.movingFeeLabel),
                                AutoSizeText(movingFees.toString()),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        const Icon(Icons.paid),
                                        AutoSizeText(l10n.cashLabel),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        const Icon(Icons.local_offer),
                                        AutoSizeText(l10n.endowLabel),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.router.push(
                                  AddMessageRoute(
                                    providerData: widget.providerData,
                                    movingFee: movingFees,
                                  ),
                                );
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
          failure: RequestProviderFailure.new,
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
