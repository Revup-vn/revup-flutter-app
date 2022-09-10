import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../../../shared/fallbacks.dart';
import '../../../shared/widgets/custom_dialog.dart';
import '../../models/pending_repair_request.dart';
import '../../models/pending_service_model.dart';
import '../bloc/overview_order_bloc.u.dart';
import '../models/overview_order_model.dart';
import 'contact_item.u.dart';

class OverviewOrderContent extends StatefulWidget {
  const OverviewOrderContent({
    super.key,
    required this.overviewOrderData,
    required this.pendingService,
    // required this.needToVerifyService,
    required this.total,
    required this.pendingRequest,
    required this.len,
  });
  final OverviewOrderModel overviewOrderData;
  final List<PendingServiceModel> pendingService;
  // final List<NeedToVerifyModel> needToVerifyService;
  final PendingRepairRequest pendingRequest;
  final int total;
  final int len;

  @override
  State<OverviewOrderContent> createState() => _OverviewOrderContentState();
}

class _OverviewOrderContentState extends State<OverviewOrderContent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<NotificationCubit>().addForegroundListener((p0) {
      final type = p0.payload.type;
      switch (type) {
        case NotificationType.NormalMessage:
          final subType = p0.payload.payload['subType'] as String;
          if (subType == 'Canceled') {
            showDialog<void>(
              barrierDismissible: false,
              context: context,
              builder: (bcontext) => SimpleDialogCustom(
                height: 250,
                content: [
                  AutoSizeText(
                    context.l10n.repairerCancelOrderLabel,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  AutoSizeText(
                    context.l10n.refundLabel,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
                button: [
                  TextButton(
                    onPressed: () {
                      if (mounted) {
                        context.router.popUntil(
                          (route) => route.settings.name == HomeRoute.name,
                        );
                      }
                    },
                    child: AutoSizeText(
                      context.l10n.understoodLabel,
                    ),
                  ),
                ],
              ),
            );
          }
          break;

        // ignore: no_default_cases
        default:
          break;
      }
    });
  }

  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    final routerFake = context.router;
    final cubit = context.read<NotificationCubit>();
    var willPop = false;
    final blogPage = context.read<OverviewOrderBloc>();
    return WillPopScope(
      onWillPop: () async {
        var isPop = false;
        if (willPop) {
          isPop = true;
        } else {
          await showDialog<String>(
            barrierDismissible: false,
            context: context,
            builder: (bcontext) {
              return SimpleDialogCustom(
                height: 300,
                content: [
                  AutoSizeText(
                    context.l10n.sureLabel,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    context.l10n.forgotSomthingLabel,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    context.l10n.cancelThisLabel,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
                button: [
                  TextButton(
                    onPressed: () {
                      context.read<OverviewOrderBloc>().add(
                            OverviewOrderEvent.cancel(
                              onRoute: () => routerFake.popUntil(
                                (route) =>
                                    route.settings.name == HomeRoute.name,
                              ),
                              sendMessage: (token, recordId) =>
                                  cubit.sendMessageToToken(
                                SendMessage(
                                  title: 'Revup',
                                  body: context.l10n.canceledLabel,
                                  token: token,
                                  icon: kRevupIconApp,
                                  payload: MessageData(
                                    type: NotificationType.NormalMessage,
                                    payload: <String, dynamic>{
                                      'subType': 'Canceled',
                                      'recordId': recordId,
                                    },
                                  ),
                                ),
                              ),
                            ),
                          );
                      isPop = true;
                      bcontext.router.pop();
                    },
                    child: Text(context.l10n.yesLabel),
                  ),
                  TextButton(
                    onPressed: () {
                      isPop = false;
                      bcontext.router.pop();
                    },
                    child: Text(context.l10n.cancelLabel),
                  )
                ],
              );
            },
          );
        }
        return isPop;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              willPop = false;
              context.router.pop();
            },
          ),
          centerTitle: false,
          title: AutoSizeText(
            context.l10n.serviceInforLabel,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactItem(
                consumer: AppUserDummy.dummyProvider(
                  widget.overviewOrderData.providerID,
                ).copyWith(
                  firstName: widget.overviewOrderData.providerName,
                  avatarUrl: widget.overviewOrderData.providerAvatarImg,
                  phone: widget.overviewOrderData.proviverPhoneNumber,
                ),
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Icons.build),
                        const SizedBox(
                          width: 20,
                        ),
                        AutoSizeText.rich(
                          TextSpan(
                            children: <InlineSpan>[
                              TextSpan(
                                text: '${context.l10n.serviceLabel}: ',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              TextSpan(
                                // exclude transit fee
                                text:
                                    '''${widget.len} ${context.l10n.serviceCountLabel}''',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.push(
                        ConfirmServiceRoute(
                          providerId: widget.overviewOrderData.providerID,
                          recordId: widget.pendingRequest.id,
                          optionalService: [],
                        ),
                      );
                    },
                    child: Text(
                      context.l10n.detailLabel,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.social_distance),
                  const SizedBox(
                    width: 20,
                  ),
                  AutoSizeText.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: '${context.l10n.distanceLabel}: ',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        TextSpan(
                          text:
                              '''${widget.overviewOrderData.distance.toStringAsFixed(1)}km''',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _expanded = !_expanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return Row(
                        children: [
                          const Icon(Icons.monetization_on_outlined),
                          const SizedBox(
                            width: 20,
                          ),
                          AutoSizeText.rich(
                            TextSpan(
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '${context.l10n.totalFeeLabel}: ',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                TextSpan(
                                  text: context.formatMoney(
                                    widget.pendingService.fold(
                                      0,
                                      (p, e) =>
                                          p +
                                          (e.name == 'transFee'
                                              ? (e.status == 'pending'
                                                  ? e.price
                                                  : -e.price)
                                              : (e.price +
                                                  (e.products.isEmpty
                                                      ? 0
                                                      : e.products.first
                                                              .unitPrice *
                                                          e.products.first
                                                              .quantity))),
                                    ),
                                  ),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    body: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.directions_run),
                            const SizedBox(
                              width: 20,
                            ),
                            AutoSizeText.rich(
                              TextSpan(
                                text: '${context.l10n.transitFeeLabel}: ',
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: context.formatMoney(
                                        widget.pendingRequest.money),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.miscellaneous_services),
                            const SizedBox(
                              width: 20,
                            ),
                            AutoSizeText.rich(
                              TextSpan(
                                text: '${context.l10n.serviceFeeLabel}: ',
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: context.formatMoney(
                                      widget.pendingService.fold(
                                        0,
                                        (p, e) =>
                                            p +
                                            (e.name != 'transFee'
                                                ? (e.price == -1
                                                        ? 0
                                                        : e.price) +
                                                    (e.products.isEmpty
                                                        ? 0
                                                        : e.products.first
                                                                .unitPrice *
                                                            e.products.first
                                                                .quantity)
                                                : 0),
                                      ),
                                    ),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    isExpanded: _expanded,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: widget.pendingService.any(
                        (e) =>
                            (e.name != 'transFee' &&
                                (!e.isOptional && e.products.isEmpty)) ||
                            e.status == 'waiting',
                      )
                          ? null
                          : () {
                              willPop = true;
                              blogPage.add(
                                OverviewOrderEvent.submitted(
                                  onRoute: () {},
                                  sendMessage: (token, recordId) => context
                                      .read<NotificationCubit>()
                                      .sendMessageToToken(
                                        SendMessage(
                                          title: 'Revup',
                                          body: context
                                              .l10n.submitRequestSuccessLabel,
                                          token: token,
                                          icon: kRevupIconApp,
                                          payload: MessageData(
                                            type:
                                                NotificationType.NormalMessage,
                                            payload: <String, dynamic>{
                                              'subType': 'ConsumerSelected',
                                              'recordId': recordId,
                                            },
                                          ),
                                        ),
                                      ),
                                ),
                              );
                              showDialog<void>(
                                context: context,
                                builder: (bcontext) => SimpleDialogCustom(
                                  height: 250,
                                  content: [
                                    AutoSizeText(
                                      context.l10n.sentRequestToProviderLabel,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    AutoSizeText(
                                      context.l10n.takeLongLabel,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                  ],
                                  button: [
                                    TextButton(
                                      onPressed: () {
                                        if (mounted) {
                                          bcontext.router.pop();
                                        }
                                      },
                                      child: AutoSizeText(
                                        context.l10n.understoodLabel,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                      child: Text(context.l10n.confirmLabel),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
