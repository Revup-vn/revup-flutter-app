import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';

import '../../../../../l10n/l10n.dart';
import '../../../account/widgets/default_avatar.dart';
import '../models/history_item_model.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    required this.data,
    required this.onTap,
  });
  final HistoryItemModel data;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final formatterDate = DateFormat('dd/MM/yyyy hh:mm');
    final listLabel = <String>[l10n.canceledLabel, l10n.successLabel];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      '''${l10n.codeOrderLabel}${data.orderNumber.length >= 7 ? data.orderNumber.substring(0, 8) : data.orderNumber}''',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AutoSizeText(
                      '''${l10n.serviceLabel} ${data.vehicleType == 0 ? l10n.motorbikeLabel : l10n.carLabel}''',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AutoSizeText(
                      formatterDate.format(data.timeCreated),
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant,
                              ) ??
                          TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
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
                            imageUrl: data.imgUrl,
                            placeholder: (context, url) => DefaultAvatar(
                              textSize: Theme.of(context).textTheme.titleLarge,
                              userName: data.userName,
                            ),
                            errorWidget: (context, url, dynamic error) =>
                                DefaultAvatar(
                              textSize: Theme.of(context).textTheme.titleLarge,
                              userName: data.userName,
                            ),
                            height: 64,
                            width: 64,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      AutoSizeText(
                        data.userName,
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
              listLabel[data.orderStatus],
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: data.orderStatus == 0
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.tertiary,
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
