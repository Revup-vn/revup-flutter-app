import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../bloc/choose_service_bloc.dart';
import '../widgets/service_checkbox_list_tile.dart';

class ChooseServiceView extends StatelessWidget {
  const ChooseServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.addServiceAppBarTitle),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {
              context.router.push(const NewServiceRequestRoute());
            },
            child: Text(l10n.addLabel),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<ChooseServiceBloc, ChooseServiceState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Text('Empty'),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: () => const Text('Failed'),
                  success: (services) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      return ServiceCheckboxListTile(
                        onTap: () => context.router.push(
                          ServiceDetailsRoute(serviceData: services[index]),
                        ),
                        serviceData: services[index],
                      );
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<ChooseServiceBloc>()
                    .add(const ChooseServiceEvent.serviceListSubmitted());
              },
              style: Theme.of(context).elevatedButtonTheme.style,
              child: AutoSizeText(l10n.confirmLabel),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
