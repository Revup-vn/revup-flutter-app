import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../map/models/directions_model.dart';
import '../../router/router.dart';
import '../../service/widgets/service_avatar.dart';

class RequestDetailsStatic extends StatelessWidget {
  const RequestDetailsStatic({
    super.key,
    required this.providerData,
    required this.movingFees,
    required this.directions,
  });
  final ProviderData providerData;
  final int movingFees;
  final Directions directions;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 300,
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
                            imageUrl: providerData.avatar,
                          ),
                          AutoSizeText(
                            providerData.fullName,
                            maxLines: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                providerData.rating.toStringAsFixed(1),
                                maxLines: 1,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                size: 16,
                              ),
                              AutoSizeText(
                                '''(${providerData.ratingCount.toString()})''',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              '''${l10n.addressNormalLabel}: ${providerData.address}''',
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      l10n.transitFeeLabel,
                      style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.normal) ??
                          const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      context.formatMoney(movingFees),
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await Hive.box<dynamic>('location')
                      .put('distance', directions.distance);
                  await context.router.push(
                    AddMessageRoute(
                      providerData: providerData,
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
    );
  }
}
