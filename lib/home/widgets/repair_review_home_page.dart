import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../../account/widgets/default_avatar.dart';
import '../../account/widgets/user_data.dart';
import '../../l10n/l10n.dart';

class RepairReviewHomePage extends StatelessWidget {
  const RepairReviewHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final users = UserData.fetchAll();
    final user = users.first;
    const timeRepair = '16:10 - 17:00';
    const dayRepair = '17/10/2022';
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      imageUrl: user.urlImage,
                      // ignore: implicit_dynamic_parameter
                      errorWidget: (context, url, error) {
                        return DefaultAvatar(
                          textSize: Theme.of(context).textTheme.titleLarge,
                          userName: user.name,
                        );
                      },
                      height: 64,
                      width: 64,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: AutoSizeText(
                    user.name,
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
                  '${l10n.timeLabel}: $timeRepair',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                AutoSizeText(
                  '${l10n.dayLabel}: $dayRepair',
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
