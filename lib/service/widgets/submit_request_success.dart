import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../l10n/l10n.dart';

class SubmitRequestSuccess extends StatelessWidget {
  const SubmitRequestSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.check_circle_outline_rounded,
          size: 48,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        const SizedBox(
          height: 16,
        ),
        AutoSizeText(context.l10n.submitRequestSuccessLabel),
        const SizedBox(
          height: 8,
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     context.router.popUntilRouteWithName('HomeRoute');
        //   },
        //   child: Text(context.l10n.backToHomePageLabel),
        // ),
      ],
    );
  }
}
