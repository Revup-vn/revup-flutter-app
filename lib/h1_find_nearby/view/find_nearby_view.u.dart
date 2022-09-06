import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart' hide Marker;

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../shared/widgets/loading.u.dart';
import '../../shared/widgets/unknown_failure.dart';
import '../bloc/find_nearby_bloc.dart';
import '../cubit/address_cubit.dart';

class FindNearbyView extends StatefulWidget {
  const FindNearbyView({super.key, required this.initCameraPosition});

  final LatLng initCameraPosition;

  @override
  State<FindNearbyView> createState() => _FindNearbyViewState();
}

class _FindNearbyViewState extends State<FindNearbyView> {
  final _controller = Completer<GoogleMapController>();

  late LatLng currentLoc;
  @override
  void initState() {
    super.initState();
    currentLoc = widget.initCameraPosition;
  }

  final makers = <Marker>[];

  Future<void> _onTap(LatLng point, AddressCubit addrCubit) async {
    makers
      ..clear()
      ..add(
        Marker(
          markerId: MarkerId(point.toString()),
          position: point,
        ),
      );
    currentLoc = point;
    setState(() {});
    await _onLocationChanged(
      currentLoc.latitude,
      currentLoc.longitude,
    );
    await addrCubit.loadAddress(currentLoc.latitude, currentLoc.longitude);
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<FindNearbyBloc>();
    final addrCubit = context.watch<AddressCubit>();
    bloc.state.maybeWhen(
      initial: () {
        bloc.add(
          FindNearbyEvent.started(
            currentLoc.latitude,
            currentLoc.longitude,
          ),
        );
        addrCubit.loadAddress(currentLoc.latitude, currentLoc.longitude);
      },
      orElse: () => false,
    );
    return BlocBuilder<FindNearbyBloc, FindNearbyState>(
      builder: (context, state) {
        final l10n = context.l10n;
        return state.when(
            initial: Container.new,
            loading: Loading.new,
            failure: UnknownFailure.new,
            loaded: (addr) {
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
                      initialCameraPosition: CameraPosition(
                        target: widget.initCameraPosition,
                        zoom: 15,
                      ),
                      onMapCreated: _controller.complete,
                      myLocationEnabled: true,
                      markers: Set.from(makers),
                      onTap: (v) => _onTap(v, addrCubit),
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
                                  l10n.breakdownLocationLabel,
                                  style:
                                      Theme.of(context).textTheme.titleLarge ??
                                          const TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                ),
                              ),
                              const Divider(),
                              addrCubit.state.when(
                                initial: Container.new,
                                loading: () => Expanded(
                                  child: Center(
                                    child: LottieBuilder.asset(
                                      Assets.screens.loading,
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                failure: () => Expanded(
                                  child: Center(
                                    child:
                                        AutoSizeText(l10n.errLoadAddressLabel),
                                  ),
                                ),
                                success: (addr) => Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: ListTile(
                                      title: AutoSizeText(
                                        addr,
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
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  bloc.add(
                                    FindNearbyEvent.submitted(
                                      lat: currentLoc.latitude,
                                      lng: currentLoc.longitude,
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
                  ],
                ),
              );
            });
      },
    );
  }

  Future<void> _onLocationChanged(double lat, double lng) async {
    final mapController = await _controller.future;

    // ignore: unawaited_futures
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(lat, lng),
          zoom: 14,
        ),
      ),
    );
  }
}
