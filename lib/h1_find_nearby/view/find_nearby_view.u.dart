import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shimmer/shimmer.dart';

import '../../l10n/l10n.dart';
import '../../map/location/bloc/location_bloc.dart';
import '../../router/router.dart';

// import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class FindNearbyView extends StatefulWidget {
  const FindNearbyView({super.key, required this.initCameraPosition});

  final LatLng initCameraPosition;

  @override
  State<FindNearbyView> createState() => _FindNearbyViewState();
}

class _FindNearbyViewState extends State<FindNearbyView> {
  late GoogleMapController mapController;

  late LatLng currentLocation;

  final makers = <Marker>[];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    context.read<LocationBloc>().add(const LocationEvent.started());
  }

  void _onTap(LatLng point) {
    setState(() {
      makers
        ..clear()
        ..add(
          Marker(
            markerId: MarkerId(point.toString()),
            position: point,
          ),
        );
    });
    currentLocation = point;
    print(currentLocation);
    context
        .read<LocationBloc>()
        .add(LocationEvent.locationUpdated(location: point));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationBloc, LocationState>(
      listener: (context, state) {
        state.whenOrNull(
          initial: (location) {
            currentLocation = LatLng(location.latitude, location.longitude);
            mapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(location.latitude, location.longitude),
                  zoom: 14,
                ),
              ),
            );
            context.read<LocationBloc>().add(
                  LocationEvent.locationUpdated(
                    location: LatLng(
                      location.latitude,
                      location.longitude,
                    ),
                  ),
                );
          },
          placeDetailsLoaded: (placeDetails) {
            makers
              ..clear()
              ..add(
                Marker(
                  markerId: MarkerId(placeDetails.placeId),
                  position: LatLng(
                    placeDetails.geometry.location.lat,
                    placeDetails.geometry.location.lng,
                  ),
                ),
              );

            return mapController.animateCamera(
              CameraUpdate.newLatLng(
                LatLng(
                  placeDetails.geometry.location.lat,
                  placeDetails.geometry.location.lng,
                ),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        final l10n = context.l10n;

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
                padding: const EdgeInsets.only(bottom: 250),
                initialCameraPosition:
                    CameraPosition(target: widget.initCameraPosition, zoom: 15),
                onMapCreated: _onMapCreated,
                myLocationEnabled: true,
                markers: Set.from(makers),
                onTap: _onTap,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 250,
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
                            l10n.breakdownLocationLabel,
                            style: Theme.of(context).textTheme.titleLarge ??
                                const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const Divider(),
                        state.maybeWhen(
                          addressLoaded: (address) => Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: ListTile(
                                title: AutoSizeText(
                                  address,
                                  maxLines: 3,
                                ),
                                leading: const Icon(
                                  Icons.place,
                                  size: 32,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          orElse: () => Expanded(
                            child: Shimmer.fromColors(
                              baseColor: const Color.fromRGBO(224, 224, 224, 1),
                              highlightColor:
                                  const Color.fromRGBO(245, 245, 245, 1),
                              child: const SizedBox(
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.read<LocationBloc>().add(
                                  LocationEvent.savedRepairLoc(
                                    location: currentLocation,
                                    onRoute: () => context.router
                                        .push(const FindProviderRoute()),
                                  ),
                                );
                          },
                          child: AutoSizeText(l10n.lookingForHelpLabel),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // FloatingSearchBar(
              //   hint: l10n.searchLabel,
              //   scrollPadding: const EdgeInsets.only(bottom: 56),
              //   transitionDuration: const Duration(milliseconds: 800),
              //   transitionCurve: Curves.easeInOut,
              //   physics: const BouncingScrollPhysics(),
              //   openAxisAlignment: 0,
              //   width: 600,
              //   debounceDelay: const Duration(milliseconds: 500),
              //   onQueryChanged: (query) {
              //     context.read<AutocompleteBloc>().add(
              //           AutocompleteEvent.started(
              //             searchInput: query,
              //             location: currentLocation,
              //           ),
              //         );
              //   },
              //   transition: CircularFloatingSearchBarTransition(),
              //   actions: [
              //     FloatingSearchBarAction(
              //       child: CircularButton(
              //         icon: const Icon(Icons.place),
              //         onPressed: () {},
              //       ),
              //     ),
              //     FloatingSearchBarAction.searchToClear(
              //       showIfClosed: false,
              //     ),
              //   ],
              //   builder: (context, transition) {
              //     return BlocBuilder<AutocompleteBloc, AutocompleteState>(
              //       builder: (context, state) {
              //         return state.when(
              //           loading: SizedBox.new,
              //           loaded: (autocomplete) {
              //             return Material(
              //               color: Colors.white,
              //               elevation: 4,
              //               child: ListView.builder(
              //                 padding: EdgeInsets.zero,
              //                 shrinkWrap: true,
              //                 itemCount: autocomplete.length,
              //                 itemBuilder: (context, index) => Column(
              //                   children: [
              //                     ListTile(
              //                       title: AutoSizeText(
              //                         autocomplete[index].description,
              //                       ),
              //                       onTap: () {
              //                         context.read<LocationBloc>().add(
              //                               LocationEvent.placeSearch(
              //                                 placeId:
              //                                     autocomplete[
              // index,
              // ].placeId,
              //                               ),
              //                             );
              //                         FloatingSearchBar.of(context)?.close();
              //                         context
              //                             .read<AutocompleteBloc>()
              //                         .add(const AutocompleteEvent.clear());
              //                       },
              //                     ),
              //                     if (autocomplete[index]
              //                             .description
              //                             .isNotEmpty &&
              //              autocomplete[index] != autocomplete.last)
              //                       const Divider(height: 0),
              //                   ],
              //                 ),
              //               ),
              //             );
              //           },
              //           failure: () =>
              //        Center(child: AutoSizeText(l10n.commonErrorLabel)),
              //         );
              //       },
              //     );
              //   },
              // ),
            ],
          ),
        );
      },
    );
  }
}
