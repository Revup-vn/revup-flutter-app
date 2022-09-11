import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../repairer_profile/models/service_data.u.dart';
import '../../../router/router.dart';
import '../../../shared/widgets/loading.u.dart';
import '../../../shared/widgets/unknown_failure.dart';
import '../../widgets/service_checkbox_group.dart';
import '../bloc/confirm_service_bloc.dart';
import '../cubit/select_prod_service_cubit.dart';

class ConfirmServiceView extends StatelessWidget {
  const ConfirmServiceView({
    super.key,
    required this.recordId,
    required this.form,
    required this.providerId,
    required this.optionalService,
  });
  final GlobalKey<FormBuilderState> form;
  final String recordId;
  final String providerId;
  final List<OptionalService> optionalService;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.read<ConfirmServiceBloc>();

    blocPage.state.whenOrNull(
      initial: () => context.read<SelectProdServiceCubit>().watch(),
    );

    return BlocBuilder<SelectProdServiceCubit, SelectProdServiceState>(
      builder: (context, state) {
        return state.when(
          initial: Container.new,
          loading: Loading.new,
          failure: UnknownFailure.new,
          success: (providerId, services, pendingService) {
            final serviceList = services.toList();
            return Scaffold(
              appBar: AppBar(
                title: AutoSizeText(l10n.addServiceAppBarTitle),
                centerTitle: false,
                actions: [
                  TextButton(
                    onPressed: () => context.router.push<List<OptionalService>>(
                      NewServiceRequestRoute(
                        optionalService: optionalService,
                        providerId: providerId,
                        isSelectProduct: true,
                        recordId: recordId,
                      ),
                    ),
                    child: Text(l10n.addLabel),
                  ),
                ],
              ),
              body: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 50),
                    child: Column(
                      children: [
                        Expanded(
                          child: FormBuilder(
                            key: form,
                            child: ServiceCheckboxGroup(
                              serviceList: serviceList,
                              pendingService: pendingService,
                              providerId: providerId,
                              isSelectProduct: true,
                              recordId: recordId,
                              form: form,
                              initialList: pendingService
                                  .map(
                                    ServiceData.fromPendingService,
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: services.isEmpty
                            ? null
                            : () {
                                // get value from form
                                form.currentState?.save();
                                final completedLst = form.currentState
                                    ?.value['data'] as List<ServiceData>;

                                if (completedLst.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text(l10n.chooseAtLeastServiceLabel),
                                    ),
                                  );
                                  return;
                                }
                                context.read<ConfirmServiceBloc>().add(
                                      ConfirmServiceEvent
                                          .selectProductCompleted(
                                        onRoute: () => context.router.pop(),
                                        saveLst: completedLst,
                                        recordId: recordId,
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
          },
        );
      },
    );
  }
}
