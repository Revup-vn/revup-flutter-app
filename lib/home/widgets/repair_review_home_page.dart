import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../account/widgets/circle_avatar.dart';
import '../../l10n/l10n.dart';

class RepairReviewHomePage extends StatelessWidget {
  const RepairReviewHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircleAvatarAccount(
                  radiusCircleAvatar: 30,
                  radiusCircleAvatarIcon: 0,
                  sizeIcon: 0,
                  sizeText: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: AutoSizeText(
                    'Quang Nghĩa',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                AutoSizeText(
                  '${l10n.serviceAccountLabel}: ${l10n.autoRepairLabel}',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                AutoSizeText(
                  '${l10n.timeLabel}: 16:10 - 17:00',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                AutoSizeText(
                  '${l10n.dayLabel}: 17/ 10/2022',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Theme.of(context).disabledColor,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
