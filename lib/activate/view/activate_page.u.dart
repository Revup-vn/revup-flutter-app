import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class ActivatePage extends StatelessWidget {
  const ActivatePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AutoSizeText(
        'Xin chao NotificationPage',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
