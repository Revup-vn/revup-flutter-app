import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../h2_find_provider/models/provider_data.u.dart';
import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../../../shared/fallbacks.dart';
import '../../model/provider_raw_data.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
    required this.providers,
    required this.keyword,
    required this.resultCount,
    required this.radius,
  });
  final String keyword;
  final int resultCount;
  final double radius;
  final List<ProviderRawData> providers;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText.rich(
                  TextSpan(
                    text: l10n.resultForLabel,
                    style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold) ??
                        const TextStyle(fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      if (keyword.isNotEmpty)
                        TextSpan(
                          text: ' "$keyword" ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      TextSpan(text: l10n.withinRadiusLabel),
                      TextSpan(
                        text: ' $radius km',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      )
                    ],
                  ),
                  maxLines: 1,
                  maxFontSize: 12,
                ),
                Text(
                  '$resultCount ${l10n.resultCountLabel}',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ) ??
                      const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ListView.separated(
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
                                        providerData: ProviderData.fromRawData(
                                            providers[index]),
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
                                          imageUrl:
                                              providers[index].avatarUrl.isEmpty
                                                  ? kFallbackImage
                                                  : providers[index].avatarUrl,
                                        ),
                                      ),
                                    ),
                                  ),
                                  title: AutoSizeText(
                                    '''${providers[index].firstName}${providers[index].lastName}''',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  subtitle: AutoSizeText(
                                    providers[index].addr,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    maxLines: 1,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  margin: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      AutoSizeText(
                                        providers[index].rating.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
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
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.location_pin,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        size: 18,
                                      ),
                                      AutoSizeText(
                                        '''${double.parse((providers[index].distance).toStringAsFixed(2))} km''',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
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
                                        '''${providers[index].timeArrivalInMinute.toInt()} ${l10n.minutesLabel}''',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
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
                                    providerData: ProviderData.fromRawData(
                                      providers[index],
                                    ),
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
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
