import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:revup_core/core.dart';
import 'package:shimmer/shimmer.dart';

import '../../account/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../bloc/home_bloc.dart';

class RepairReviewHomePage extends StatelessWidget {
  const RepairReviewHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => Shimmer.fromColors(
          baseColor: const Color.fromRGBO(224, 224, 224, 1),
          highlightColor: const Color.fromRGBO(245, 245, 245, 1),
          child: Container(
            width: double.infinity,
            height: 16,
            color: Colors.white,
          ),
        ),
        success: (ads, activeRepairRecord, homeModel) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(48),
                        child: CachedNetworkImage(
                          fadeInDuration: const Duration(milliseconds: 50),
                          fadeOutDuration: const Duration(milliseconds: 50),
                          imageUrl: homeModel.imageUrl,
                          placeholder: (context, url) {
                            return DefaultAvatar(
                              textSize: Theme.of(context).textTheme.titleLarge,
                              userName: homeModel.providerName,
                            );
                          },
                          errorWidget: (context, url, dynamic error) {
                            return DefaultAvatar(
                              textSize: Theme.of(context).textTheme.titleLarge,
                              userName: homeModel.providerName,
                            );
                          },
                          height: 64,
                          width: 64,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: AutoSizeText(
                        homeModel.providerName,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    AutoSizeText(
                      '''${l10n.vehicleTypeLabel}: ${homeModel.serviceType == 0 ? l10n.motorbikeLabel : l10n.carLabel}''',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    AutoSizeText(
                      '${l10n.dayLabel}: ${context.formatDate(
                        homeModel.created,
                      )}',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(
                  children: [
                    RatingBar.builder(
                      initialRating: homeModel.rating.toDouble(),
                      itemSize: 30,
                      ignoreGestures: true,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      onRatingUpdate: print,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
