import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../router/app_router.gr.dart';
import '../../../router/router.dart';
import '../../../shared/utils.dart';
import '../../widgets/service_checkbox_tile.dart';
import '../bloc/choose_service_bloc.u.dart';

class ChooseServiceView extends StatelessWidget {
  const ChooseServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.read<ChooseServiceBloc>();
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const ChooseServiceEvent.started()),
    );

    final user = getUser(context.read<AuthenticateBloc>().state)
        .getOrElse(() => throw NullThrownError());

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.addServiceAppBarTitle),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () => context.router
                .push<OptionalService>(const NewServiceRequestRoute())
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
                    return state.maybeWhen(
                      orElse: () => const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      failure: () =>
                          Center(child: AutoSizeText(l10n.commonErrorLabel)),
                      success: (providerId, services, categories) {
                        final serviceList = services.toList();

                        return Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 100),
                            itemCount: serviceList.length,
                            itemBuilder: (context, index) {
                              return ServiceCheckboxTile(
                                onTap: () => context.router.push(
                                  ServiceDetailRoute(
                                    serviceData: serviceList[index],
                                    categories: categories,
                                    providerId: providerId,
                                  ),
                                ),
                                serviceData: serviceList[index],
                                index: index,
                                selectProMode: false,
                                providerId: providerId,
                                categories: categories,
                              );
                            },
                          ),
                        );
                      },
                      orderModify: (providerId, services, categories) {
                        final serviceList = services.toList();
                        final boxServiceSelect =
                            Hive.box<dynamic>('serviceSelect');

                        return Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 100),
                            itemCount: serviceList.length,
                            itemBuilder: (context, index) {
                              return ServiceCheckboxTile(
                                onTap: () => context.router.push(
                                  ServiceDetailRoute(
                                    serviceData: serviceList[index],
                                    categories: categories,
                                    providerId: providerId,
                                  ),
                                ),
                                serviceData: serviceList[index],
                                selectProMode:
                                    boxServiceSelect.containsKey(index),
                                index: index,
                                providerId: providerId,
                                categories: categories,
                              );
                            },
                          ),
                        );
                      },
                      submitSuccess: () {
                        // context.router.replaceAll([HomeRoute(user: user)]);
                        context.router.replace(HomeRoute(user: user));

                        return const Center(
                          child: CircularProgressIndicator.adaptive(),
                        );
                      },
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
                  context.read<ChooseServiceBloc>().add(
                        const ChooseServiceEvent.serviceListSubmitted(
                          notificationTitle: '',
                          notificationBody: '',
                        ),
                      );
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
