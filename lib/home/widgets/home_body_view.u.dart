import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shimmer/shimmer.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../bloc/home_bloc.dart';
import 'app_service_panel.u.dart';
import 'repair_review_home_page.u.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.watch<HomeBloc>();
    blocPage.state.maybeWhen(
      initial: () => blocPage.add(HomeEvent.started()),
      orElse: () {
        print(blocPage.state);
      },
    );

    void _showRequestLocationDialog() {
      showDialog<Widget>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(10),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        l10n.locationDeniedLabel,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () async {
                          await openAppSettings();
                          await context.router.pop();
                        },
                        child: AutoSizeText(
                          l10n.enableLocationLabel,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Future<void> determineUserLocation() async {
      final permissions = await [Permission.locationWhenInUse].request();
      switch (permissions[Permission.locationWhenInUse]) {
        case PermissionStatus.denied:
        case PermissionStatus.limited:
        case PermissionStatus.permanentlyDenied:
        case PermissionStatus.restricted:
          _showRequestLocationDialog();
          break;
        case PermissionStatus.granted:
          final status = await Permission.locationWhenInUse.serviceStatus;
          if (status.isEnabled) {
            final position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high,
            );
            final boxLocation = await Hive.openBox<dynamic>('location');
            await boxLocation.put('currentLat', position.latitude);
            await boxLocation.put('currentLng', position.longitude);
          } else if (status.isDisabled) {
            _showRequestLocationDialog();
          }
          break;
        // ignore: no_default_cases
        default:
          break;
      }
    }

    determineUserLocation();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Assets.screens.logoTrans.svg(fit: BoxFit.cover),
                  ],
                ),
              ),
              const AppServicePanel(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: AutoSizeText(
                  l10n.rateLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              const RepairReviewHomePage(),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                child: AutoSizeText(
                  l10n.discoverNowLabel,
                  style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold) ??
                      const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              state.maybeWhen(
                success: (provider, imageList, timeRepair, dayRepair) => Swiper(
                  layout: SwiperLayout.STACK,
                  itemCount: imageList.length(),
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageList.get(index).getOrElse(
                            () =>
                                'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
                          ),
                      progressIndicatorBuilder: (context, url, progress) {
                        return ColoredBox(
                          color: Colors.black12,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: progress.progress,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  itemWidth: 400,
                  itemHeight: 100,
                ),
                orElse: () {
                  return Shimmer.fromColors(
                    baseColor: const Color.fromRGBO(224, 224, 224, 1),
                    highlightColor: const Color.fromRGBO(245, 245, 245, 1),
                    child: const SizedBox(
                      width: 400,
                      height: 100,
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: AutoSizeText(
                  l10n.dealsForYouLabel,
                  style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontWeight: FontWeight.bold) ??
                      const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              state.maybeWhen(
                success: (provider, imageList, timeRepair, dayRepair) => Swiper(
                  layout: SwiperLayout.STACK,
                  itemCount: imageList.length(),
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageList.get(index).getOrElse(
                            () =>
                                'https://www.tiendauroi.com/wp-content/uploads/2020/02/shopee-freeship-xtra-750x233.jpg',
                          ),
                      progressIndicatorBuilder: (context, url, progress) {
                        return ColoredBox(
                          color: Colors.black12,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: progress.progress,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  itemWidth: 400,
                  itemHeight: 100,
                ),
                orElse: () {
                  return Shimmer.fromColors(
                    baseColor: const Color.fromRGBO(224, 224, 224, 1),
                    highlightColor: const Color.fromRGBO(245, 245, 245, 1),
                    child: const SizedBox(
                      width: 400,
                      height: 100,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
