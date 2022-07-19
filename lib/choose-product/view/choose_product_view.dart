import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';

class ChooseProductView extends StatelessWidget {
  const ChooseProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.chooseProductAppBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              shrinkWrap: true,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
