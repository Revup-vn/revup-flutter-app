import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.title,
    required this.body,
    required this.time,
  });
  final String title;
  final String body;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AutoSizeText(
          title,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ) ??
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        AutoSizeText(
          '${l10n.codeOrderLabel}$body',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ) ??
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        AutoSizeText(
          context.formatDate(time),
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ) ??
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
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
