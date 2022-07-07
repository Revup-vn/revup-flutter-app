import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import 'add_service_list.dart';

class AddServiceView extends StatelessWidget {
  const AddServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.addServiceAppBarTitle),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AddServiceList(),
            ElevatedButton(
              onPressed: () {}, // TODO(cantgim): confirm event
              style: Theme.of(context).elevatedButtonTheme.style,
              child: AutoSizeText(l10n.confirmLabel),
            )
          ],
        ),
      ),
    );
  }
}
