import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../../repairer_profile/models/service_data.u.dart';
import '../../../router/app_router.gr.dart';
import '../../../router/router.dart';
import '../../../shared/fallbacks.dart';
import '../../../shared/widgets/loading.u.dart';
import '../../../shared/widgets/unknown_failure.dart';
import '../../widgets/service_checkbox_group.dart';
import '../bloc/choose_service_bloc.u.dart';
import '../cubit/payment_cubit.dart';

class ChooseServiceView extends StatefulWidget {
  const ChooseServiceView({
    super.key,
    required this.form,
    required this.providerId,
    required this.optionalService,
  });
  final GlobalKey<FormBuilderState> form;
  final String providerId;
  final List<OptionalService> optionalService;

  @override
  State<ChooseServiceView> createState() => _ChooseServiceViewState();
}

class _ChooseServiceViewState extends State<ChooseServiceView> {
  var _isPayOnline = false;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final blocPage = context.watch<ChooseServiceBloc>();
    final paymentCubit = context.watch<PaymentCubit>();
    final notify = context.read<NotificationCubit>();
    blocPage.state.whenOrNull(
      initial: () {
        blocPage.add(
            ChooseServiceEvent.started(newService: widget.optionalService));
        paymentCubit.watch();
      },
    );

    paymentCubit.state.when(
      initial: () => false,
      failure: (recordId) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Future<dynamic>.delayed(const Duration(seconds: 2), () {
            showFlash<void>(
              duration: const Duration(seconds: 2),
              context: context,
              builder: (_, controller) {
                return Flash<Widget>(
                  controller: controller,
                  margin: const EdgeInsets.only(left: 20),
                  behavior: FlashBehavior.floating,
                  position: FlashPosition.top,
                  forwardAnimationCurve: Curves.easeIn,
                  reverseAnimationCurve: Curves.easeOut,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  child: FlashBar(
                    content: Text(
                      l10n.failurePaymentLabel,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                    indicatorColor: Theme.of(context).colorScheme.error,
                    primaryAction: TextButton(
                      onPressed: () {
                        controller.dismiss();
                      },
                      child: Text(context.l10n.hideLabel),
                    ),
                  ),
                );
              },
            ).then(
              (value) => context.router.popUntil(
                (route) =>
                    route.settings.name == const FindProviderRoute().routeName,
              ),
            );
          });
        });
      },
      success: (token, recordId) {
        final _paymentRepo = context
            .read<StoreRepository>()
            .repairPaymentRepo(RepairRecordDummy.dummyPending(recordId));
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final movingFee = boxRprRecord.get('movingFee', defaultValue: 0) as int;
        _paymentRepo
            .create(
              PaymentService.paid(
                serviceName: 'transFee',
                moneyAmount: movingFee,
                products: [],
                paidIn: DateTime.now(),
              ),
            )
            .then(
              (value) => notify.sendMessageToToken(
                SendMessage(
                  title: 'Revup',
                  body: l10n.submitRequestSuccessLabel,
                  token: token,
                  icon: kRevupIconApp,
                  payload: MessageData(
                    type: NotificationType.ConsumerRequestRepair,
                    payload: <String, dynamic>{'recordId': recordId},
                  ),
                ),
              ),
            )
            .then(
              (value) => context.router.replace(
                CountdownRoute(
                  token: token,
                ),
              ),
            );
      },
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
                optionalService: widget.optionalService,
                providerId: widget.providerId,
                isSelectProduct: false,
              ),
              result: widget.optionalService,
            ),
            child: Text(l10n.addLabel),
          ),
        ],
      ),
      body: BlocBuilder<ChooseServiceBloc, ChooseServiceState>(
        builder: (context, state) {
          return state.maybeWhen(
            failure: UnknownFailure.new,
            success: (providerId, serviceData, catAndSv, movingFee) {
              final serviceList = serviceData.toList();
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Column(
                      children: [
                        Expanded(
                          child: FormBuilder(
                            key: widget.form,
                            child: ServiceCheckboxGroup(
                              serviceList: serviceList,
                              pendingService: const [],
                              providerId: providerId,
                              isSelectProduct: false,
                              recordId: '',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      color: Theme.of(context).colorScheme.surface,
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AutoSizeText(
                            l10n.acceptTransportPaymentLabel,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                l10n.transitFeeLabel,
                                style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.normal,
                                        ) ??
                                    const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                context.formatMoney(movingFee),
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    context.router
                                        .push<bool>(const PaymentRoute())
                                        .then(
                                      (value) {
                                        setState(() {
                                          _isPayOnline = value ?? false;
                                        });
                                      },
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      if (_isPayOnline)
                                        Assets.screens.momo.image(
                                          width: 24,
                                          height: 24,
                                        )
                                      else
                                        const Icon(Icons.money),
                                      AutoSizeText(
                                        _isPayOnline
                                            ? l10n.momoLabel
                                            : l10n.cashLabel,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.local_offer,
                                        color: Colors.deepOrange,
                                      ),
                                      AutoSizeText(
                                        l10n.endowLabel,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              widget.form.currentState?.save();
                              final saveLst = widget.form.currentState
                                  ?.value['data'] as List<ServiceData>;

                              if (saveLst.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text(l10n.chooseAtLeastServiceLabel),
                                  ),
                                );
                                return;
                              }
                              context.read<ChooseServiceBloc>().add(
                                    ChooseServiceEvent.serviceListSubmitted(
                                      // Go to timeout page
                                      isPaymentOnline: _isPayOnline,
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
                                              body: l10n
                                                  .submitRequestSuccessLabel,
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
                                      saveLst: widget.form.currentState
                                          ?.value['data'] as List<ServiceData>,
                                      onPopBack: () => context
                                          .showInfoBar<void>(
                                            content: Text(
                                              context.l10n.providerBusy,
                                            ),
                                          )
                                          .then(
                                            (_) => context.router.popUntil(
                                              (route) =>
                                                  route.settings.name ==
                                                  const FindProviderRoute()
                                                      .routeName,
                                            ),
                                          ),
                                      pay: (
                                        movingFee,
                                        recordId,
                                        displayRecordName,
                                        consumerName,
                                      ) =>
                                          context.read<MomoCubit>().pay(
                                                PaymentInfo(
                                                  amount: movingFee,
                                                  recordId: recordId,
                                                  displayRecordName:
                                                      displayRecordName,
                                                  consumerName: consumerName,
                                                  description: l10n
                                                      .paymentDescriptionLabel,
                                                ),
                                              ),
                                    ),
                                  );
                            },
                            style: Theme.of(context).elevatedButtonTheme.style,
                            child: AutoSizeText(l10n.confirmLabel),
                          ),
                        ],
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
