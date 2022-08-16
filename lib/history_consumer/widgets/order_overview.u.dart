import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

import '../../account/widgets/default_avatar.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../model/history_model.dart';

class HistoryOverview extends StatelessWidget {
  const HistoryOverview({
    super.key,
    required this.historyModel,
  });
  final HistoryModel historyModel;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () => context.router.push(
            HistoryDetailRoute(historyModel: historyModel),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '${l10n.newRepairRequestBody}${historyModel.toLocation}',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AutoSizeText(
                    '${l10n.serviceLabel}: ${historyModel.vehicleType}',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AutoSizeText(
                    context.formatDate(historyModel.completedTime),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ) ??
                        TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
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
                            imageUrl: historyModel.provider.avatarUrl,
                            placeholder: (context, url) {
                              return DefaultAvatar(
                                textSize:
                                    Theme.of(context).textTheme.titleLarge,
                                userName:
                                    '''${historyModel.provider.firstName} ${historyModel.provider.lastName}''',
                              );
                            },
                            errorWidget: (context, url, dynamic error) {
                              return DefaultAvatar(
                                textSize:
                                    Theme.of(context).textTheme.titleLarge,
                                userName:
                                    '''${historyModel.provider.firstName} ${historyModel.provider.lastName}''',
                              );
                            },
                            height: 64,
                            width: 64,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      AutoSizeText(
                        '''${historyModel.provider.firstName} ${historyModel.provider.lastName}''',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AutoSizeText(
              historyModel.isComplete
                  ? l10n.completedOrderLabel
                  : l10n.canceledLabel,
              style: TextStyle(
                color: historyModel.isComplete
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.error,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
