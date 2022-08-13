import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../l10n/l10n.dart';
import '../shared/utils.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            l10n.locationDeniedLabel,
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              final isGranted = await requestUserLocation();
              if (isGranted) {
                await context.router.pop();
              }
            },
            child: AutoSizeText(
              l10n.enableLocationLabel,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
