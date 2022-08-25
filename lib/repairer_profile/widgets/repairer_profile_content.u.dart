import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../models/rating_data.u.dart';
import '../models/service_data.u.dart';
import 'repairer_profile_avatar_image.u.dart';
import 'repairer_profile_cover_image.u.dart';
import 'repairer_profile_tabbar.u.dart';

class RepairerProfileMainContent extends StatelessWidget {
  const RepairerProfileMainContent(
    this.serviceData,
    this.ratingData,
    this.provider,
    this.categories, {
    super.key,
  });
  final IList<ServiceData> serviceData;
  final IList<RatingData> ratingData;
  final ProviderData provider;
  final Tuple2<RepairCategory, IList<ServiceData>> categories;
  @override
  Widget build(BuildContext context) {
    const coverHeight = 150;
    final svDataVector = IVector.from(serviceData.toIterable());
    final ratingDataVector = IVector.from(ratingData.toIterable());
    final l10n = context.l10n;

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            RepairerProfileCoverImage(
              coverHeight.toDouble(),
              provider.backgroundImg,
            ),
            Positioned(
              left: 16,
              top: coverHeight - 124 / 2,
              child: RepairerProfileAvatarImage(provider.avatar),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: coverHeight + 124 / 2,
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    provider.fullName,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  AutoSizeText(
                    provider.profileBio,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.location_on_outlined),
                      Expanded(
                        child: AutoSizeText(
                          provider.address,
                          style: Theme.of(context).textTheme.labelLarge,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      Expanded(
                        child: AutoSizeText(
                          '''${provider.rating} | ${provider.ratingCount} ${l10n.starRatingCountLabel}''',
                          style: Theme.of(context).textTheme.labelLarge,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.push(
                          RequestProviderRoute(
                            providerData: provider,
                            recordType: 'pending',
                          ),
                        );
                      },
                      child: AutoSizeText(l10n.callForHelpLabel),
                    ),
                  ),
                  Divider(
                    color: Theme.of(context)
                        .colorScheme
                        .inverseSurface
                        .withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: RepairerProfileTabBar(
              svDataVector,
              ratingDataVector,
              providerId: provider.id,
              categories,
            ),
          ),
        ),
      ],
    );
  }
}
