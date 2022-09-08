import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../account/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../models/provider_data.u.dart';
import '../models/provider_raw_data.dart';

class FindProviderLoaded extends StatelessWidget {
  const FindProviderLoaded({super.key, required this.providers});
  final List<ProviderRawData> providers;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext buildContext, int index) {
          return Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
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
                                  //todo
                                  providerData: ProviderData.fromRawData(
                                    providers[index],
                                  ),
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
                                    imageUrl: providers[index].avatarUrl,
                                    errorWidget:
                                        (context, url, dynamic error) =>
                                            DefaultAvatar(
                                      textSize:
                                          Theme.of(context).textTheme.headline5,
                                      userName: providers[index].firstName,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            title: AutoSizeText(
                              '''${providers[index].firstName} ${providers[index].lastName}''',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            subtitle: AutoSizeText(
                              providers[index].addr,
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 1,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 8),
                            margin: const EdgeInsets.only(left: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                AutoSizeText(
                                  providers[index].rating.toStringAsFixed(1),
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
                                  '(${providers[index].ratingCount})',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.location_pin,
                                  color: Theme.of(context).colorScheme.primary,
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
                                  color: Colors.red,
                                  size: 18,
                                ),
                                AutoSizeText(
                                  '''${providers[index].timeArrivalInMinute.toInt()} ${context.l10n.minutesLabel}''',
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
                              //todo
                              providerData:
                                  ProviderData.fromRawData(providers[index]),
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
        itemCount: providers.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 6,
        ),
      ),
    );
  }
}
