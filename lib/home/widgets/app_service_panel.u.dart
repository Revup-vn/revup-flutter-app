import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../l10n/l10n.dart';
import '../../router/router.dart';
import 'app_service_item.u.dart';

class AppServicePanel extends StatelessWidget {
  const AppServicePanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      height: 140,
      color: Theme.of(context).colorScheme.inversePrimary,
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onPrimary,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onPrimary,
              spreadRadius: 6,
            ),
          ],
        ),
        width: 350,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppServiceItem(
              name: l10n.sosLabel,
              icon: const Icon(
                Icons.sos,
              ),
              onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: const EdgeInsets.all(10),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  l10n.chooseVehicleLabel,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppServiceItem(
                                      name: l10n.carLabel,
                                      icon: const Icon(Icons.car_crash),
                                      onPressed: () async {
                                        final boxRprRecord =
                                            await Hive.openBox<dynamic>(
                                          'repairRecord',
                                        );
                                        await boxRprRecord.put(
                                          'vehicle',
                                          'car',
                                        );
                                        final boxLocation =
                                            Hive.box<dynamic>('location');

                                        await context.router.popAndPush(
                                          FindNearbyRoute(
                                            currentLocation: LatLng(
                                              boxLocation.get('currentLat')
                                                  as double,
                                              boxLocation.get('currentLng')
                                                  as double,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    const SizedBox(width: 32),
                                    AppServiceItem(
                                      name: l10n.motorbikeLabel,
                                      icon: const Icon(Icons.motorcycle),
                                      onPressed: () async {
                                        final boxRprRecord =
                                            await Hive.openBox<dynamic>(
                                          'repairRecord',
                                        );
                                        await boxRprRecord.put(
                                          'vehicle',
                                          'motorbike',
                                        );
                                        final boxLocation =
                                            Hive.box<dynamic>('location');
                                        await context.router.popAndPush(
                                          FindNearbyRoute(
                                            currentLocation: LatLng(
                                              boxLocation.get('currentLat')
                                                  as double,
                                              boxLocation.get('currentLng')
                                                  as double,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            AppServiceItem(
              name: l10n.sosLabel,
              icon: const Icon(
                Icons.build,
              ),
              onPressed: () {
                // TODO(cantgim): implement sthg
              },
            ),
            AppServiceItem(
              name: l10n.sosLabel,
              icon: const Icon(
                Icons.local_gas_station,
              ),
              onPressed: () {
                // TODO(cantgim): implement sthg
              },
            ),
          ],
        ),
      ),
    );
  }
}
