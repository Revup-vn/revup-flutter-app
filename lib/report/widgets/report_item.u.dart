import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../l10n/l10n.dart';
import '../../account/widgets/default_avatar.dart';
import '../model/report_model.dart';

class ReportItem extends StatelessWidget {
  const ReportItem({
    super.key,
    required this.data,
    required this.textColor,
  });
  final ReportModel data;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final listLabel = <String>[
      l10n.unResolvedLabel,
      l10n.resolvedLabel,
      l10n.canceledLabel
    ];
    final formatterDate = DateFormat('dd/MM/yyyy hh:mm');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  '${l10n.codeOrderLabel} ${data.orderID}',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  height: 16,
                ),
                AutoSizeText(
                  '${l10n.reportType} ${data.cate.name}',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  height: 6,
                ),
                AutoSizeText(
                  '${l10n.reportDesLabel}: ${data.desc}',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ) ??
                      TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                AutoSizeText(
                  '${l10n.startedLabel}: ${formatterDate.format(data.created)}',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ) ??
                      TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                if (data.status == 1 || data.status == 2)
                  AutoSizeText(
                    '${l10n.endedLabel}: ${formatterDate.format(data.end)}',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ) ??
                        TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                AutoSizeText(
                  '${data.from} - ${data.to}',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ) ??
                      TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ],
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
                          imageUrl: data.provider.avatarUrl,
                          placeholder: (context, url) => DefaultAvatar(
                            textSize: Theme.of(context).textTheme.titleLarge,
                            userName:
                                '''${data.provider.firstName} ${data.provider.lastName}''',
                          ),
                          errorWidget: (context, url, dynamic error) =>
                              DefaultAvatar(
                            textSize: Theme.of(context).textTheme.titleLarge,
                            userName:
                                '''${data.provider.firstName} ${data.provider.lastName}''',
                          ),
                          height: 64,
                          width: 64,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    AutoSizeText(
                      '''${data.provider.firstName} ${data.provider.lastName}''',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AutoSizeText(
              listLabel[data.status],
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: textColor,
                      ) ??
                  TextStyle(color: textColor),
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
