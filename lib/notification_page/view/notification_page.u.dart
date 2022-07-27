import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AutoSizeText(
        'Xin chao NotificationPage',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
