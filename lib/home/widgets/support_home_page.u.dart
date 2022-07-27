import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import 'support_home_page_item.u.dart';

class SupportHomePage extends StatelessWidget {
  const SupportHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      height: 140,
      color: Theme.of(context).colorScheme.inversePrimary,
      alignment: Alignment.center, // where to position the child
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onPrimary,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onPrimary,
              spreadRadius: 6,
            ),
          ],
        ),
        width: 350,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SupportHomePageItem(
              userName: l10n.sosLabel,
              icon: const Icon(
                Icons.sos,
              ),
            ),
            SupportHomePageItem(
              userName: l10n.sosLabel,
              icon: const Icon(
                Icons.build,
              ),
            ),
            SupportHomePageItem(
              userName: l10n.sosLabel,
              icon: const Icon(
                Icons.local_gas_station,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
