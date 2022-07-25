import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../../../router/app_router.dart';
import '../../models/service_data.dart';
import '../../widgets/service_checkbox_tile.dart';
import '../bloc/choose_service_bloc.u.dart';

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
            onPressed: () => context.router
                .push<ServiceData>(const NewServiceRequestRoute())
                .then(
              (value) {
                if (value != null) {
                  context.read<ChooseServiceBloc>().add(
                        ChooseServiceEvent.newServiceRequested(
                          value,
                        ),
                      );
                }
              },
            ),
            child: Text(l10n.addLabel),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              children: [
                BlocBuilder<ChooseServiceBloc, ChooseServiceState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Text('Empty'),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      failure: () => const Text('Failed'),
                      success: (services) => Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.only(bottom: 100),
                          itemCount: services.length(),
                          itemBuilder: (context, index) {
                            return ServiceCheckboxTile(
                              onTap: () => context.router.push(
                                ServiceDetailsRoute(
                                  serviceData:
                                      services.toList().elementAt(index),
                                ),
                              ),
                              serviceData: services.toList().elementAt(index),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<ChooseServiceBloc>()
                      .add(const ChooseServiceEvent.serviceListSubmitted());
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: AutoSizeText(l10n.confirmLabel),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
