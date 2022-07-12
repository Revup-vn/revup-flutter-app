import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../bloc/choose_service_bloc.dart';
import 'choose_service_list.dart';

class ChooseServiceView extends StatelessWidget {
  const ChooseServiceView({super.key});
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
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(l10n.addLabel),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ChooseServiceList(),
            ElevatedButton(
              onPressed: () {
                context
                    .read<ChooseServiceBloc>()
                    .add(const ChooseServiceEvent.serviceListSubmitted());
              },
              style: Theme.of(context).elevatedButtonTheme.style,
              child: AutoSizeText(l10n.confirmLabel),
            )
          ],
        ),
      ),
      // ),
    );
  }
}
