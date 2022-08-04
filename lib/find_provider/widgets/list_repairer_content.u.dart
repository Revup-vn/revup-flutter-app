import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';

import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../shared/fallbacks.dart';
import '../models/provider_data.u.dart';

class ListRepairerContent extends StatelessWidget {
  const ListRepairerContent({
    super.key,
    required this.listProvider,
  });
  final IList<ProviderData> listProvider;
  @override
  Widget build(BuildContext context) {
    final providers = listProvider.toIterable().toList();

    return ListView.separated(
      itemBuilder: (BuildContext buildContext, int index) {
        return Card(
          color: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListBody(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            context.router.push(
                              RepairerProfileRoute(
                                providerID: providers[index].id,
                              ),
                            );
                          },
                          leading: SizedBox(
                            width: 54,
                            height: 54,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(48),
                              child: CircleAvatar(
                                child: CachedNetworkImage(
                                  height: double.infinity,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                  imageUrl: providers[index].avatar.isEmpty
                                      ? kFallbackImage
                                      : providers[index].avatar,
                                ),
                              ),
                            ),
                          ),
                          title: AutoSizeText(
                            providers[index].fullName,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          subtitle: AutoSizeText(
                            providers[index].address,
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AutoSizeText(
                                providers[index].numberStarRating.toString(),
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Icon(
                                Icons.star,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                size: 18,
                              ),
                              AutoSizeText(
                                providers[index].totalRating.toString(),
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.location_pin,
                                size: 18,
                              ),
                              AutoSizeText(
                                '''${double.parse((providers[index].distance).toStringAsFixed(2))} km''',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.timer,
                                size: 18,
                              ),
                              AutoSizeText(
                                '''
${providers[index].timeArrivalInMinute.toInt()} ${context.l10n.minutesLabel}''',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                        context.router.push(
                          RepairerProfileRoute(
                            providerID: providers[index].id,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: listProvider.length(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
