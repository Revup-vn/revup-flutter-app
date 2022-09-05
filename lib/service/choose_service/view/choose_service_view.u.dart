import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../repairer_profile/models/service_data.u.dart';
import '../../../router/app_router.gr.dart';
import '../../../router/router.dart';
import '../../../shared/fallbacks.dart';
import '../../../shared/widgets/loading.u.dart';
import '../../../shared/widgets/unknown_failure.dart';
import '../../widgets/service_checkbox_group.dart';
import '../bloc/choose_service_bloc.u.dart';

class ChooseServiceView extends StatelessWidget {
  const ChooseServiceView({
    super.key,
    this.recordId,
    required this.form,
    required this.providerId,
    required this.optionalService,
  });
  final GlobalKey<FormBuilderState> form;
  final String? recordId;
  final String providerId;
  final List<OptionalService> optionalService;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.read<ChooseServiceBloc>();
    blocPage.state.whenOrNull(
      initial: () =>
          blocPage.add(ChooseServiceEvent.started(newService: optionalService)),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.addServiceAppBarTitle),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () => context.router
                .popAndPush<List<OptionalService>, List<OptionalService>>(
              NewServiceRequestRoute(
                optionalService: optionalService,
                providerId: providerId,
                isSelectProduct: false,
              ),
              result: optionalService,
            ),
            child: Text(l10n.addLabel),
          ),
        ],
      ),
      body: BlocBuilder<ChooseServiceBloc, ChooseServiceState>(
        builder: (context, state) {
          return state.maybeWhen(
            failure: UnknownFailure.new,
            success: (providerId, serviceData, catAndSv) {
              final serviceList = serviceData.toList();
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Column(
                      children: [
                        FormBuilder(
                          key: form,
                          child: ServiceCheckboxGroup(
                            serviceList: serviceList,
                            pendingService: const [],
                            providerId: providerId,
                            isSelectProduct: false,
                            recordId: recordId ?? '',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          // get value from form
                          form.currentState?.save();
                          final saveLst = form.currentState?.value['data']
                              as List<ServiceData>;

                          if (saveLst.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(l10n.chooseAtLeastServiceLabel),
                              ),
                            );
                            return;
                          }
                          context.read<ChooseServiceBloc>().add(
                                ChooseServiceEvent.serviceListSubmitted(
                                  // Go to timeout page
                                  onRouteToTimeOut: (token) =>
                                      context.router.replace(
                                    CountdownRoute(
                                      token: token,
                                    ),
                                  ),
                                  sendMessage: (token, recordId) => context
                                      .read<NotificationCubit>()
                                      .sendMessageToToken(
                                        SendMessage(
                                          title: 'Revup',
                                          body: l10n.submitRequestSuccessLabel,
                                          token: token,
                                          icon: kRevupIconApp,
                                          payload: MessageData(
                                            type: NotificationType
                                                .ConsumerRequestRepair,
                                            payload: <String, dynamic>{
                                              'recordId': recordId
                                            },
                                          ),
                                        ),
                                      ),
                                  saveLst: saveLst,
                                  onPopBack: () => context
                                      .showInfoBar<void>(
                                        content:
                                            Text(context.l10n.providerBusy),
                                      )
                                      .then(
                                        (_) => context.router.popUntil(
                                          (route) =>
                                              route.settings.name ==
                                              const FindProviderRoute()
                                                  .routeName,
                                        ),
                                      ),
                                ),
                              );
                        },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: AutoSizeText(l10n.confirmLabel),
                      ),
                    ),
                  ),
                ],
              );
            },
            orElse: Loading.new,
          );
        },
      ),
    );
  }
}
