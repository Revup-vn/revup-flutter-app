import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class ActivatePage extends StatelessWidget {
  const ActivatePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AutoSizeText(
        'Xin chao ActivatePage',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
