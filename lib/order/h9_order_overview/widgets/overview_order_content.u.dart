import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../../../service/widgets/service_avatar.dart';
import '../../../shared/fallbacks.dart';
import '../../../shared/utils.dart';
import '../../models/need_to_verify_model.dart';
import '../../models/pending_repair_request.dart';
import '../../models/pending_service_model.dart';
import '../bloc/overview_order_bloc.u.dart';
import '../models/overview_order_model.dart';

class OverviewOrderContent extends StatefulWidget {
  const OverviewOrderContent({
    super.key,
    required this.overviewOrderData,
    required this.pendingService,
    required this.needToVerifyService,
    required this.total,
    required this.pendingRequest,
  });
  final OverviewOrderModel overviewOrderData;
  final List<PendingServiceModel> pendingService;
  final List<NeedToVerifyModel> needToVerifyService;
  final PendingRepairRequest pendingRequest;
  final int total;

  @override
  State<OverviewOrderContent> createState() => _OverviewOrderContentState();
}

class _OverviewOrderContentState extends State<OverviewOrderContent> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    final blogPage = context.read<OverviewOrderBloc>();
    return Scaffold(
      appBar: AppBar(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      children: [
                        ServiceAvatar(
                          imageUrl: widget.overviewOrderData.providerAvatarImg,
                        ),
                        AutoSizeText(
                          widget.overviewOrderData.providerName,
                          style: Theme.of(context).textTheme.bodyLarge,
                          maxLines: 1,
                          minFontSize: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox.square(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: IconButton(
                      onPressed: () {
                        makePhoneCall(
                          widget.overviewOrderData.proviverPhoneNumber,
                        );
                      },
                      icon: Icon(
                        Icons.call,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox.square(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: IconButton(
                      onPressed: () {
                        // TODO(wamynobe): mplement video
                        // call function
                      },
                      icon: Icon(
                        Icons.videocam,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
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
                              text: '${context.l10n.serviceLabel} : ',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text:
                                  '''${widget.pendingService.length + widget.needToVerifyService.length} ${context.l10n.serviceCountLabel}''',
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
                      ChooseServiceRoute(
                        providerId: widget.overviewOrderData.providerID,
                        isSelectProduct: true,
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
                        text: '${widget.overviewOrderData.distance}km',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                                  widget.pendingService.isEmpty
                                      ? 0
                                      : (widget.pendingService
                                          .map((e) => e.price)
                                          .toList()
                                          .reduce(
                                            (value, element) => value + element,
                                          )),
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
                                  text: context
                                      .formatMoney(widget.pendingRequest.money),
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
                                  text: '',
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
                      (e) => e.products.isEmpty,
                    )
                        ? null
                        : () {
                            blogPage.add(OverviewOrderEvent.submitted(
                              onRoute: () => context.router.pop(),
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
                                        type: NotificationType.NormalMessage,
                                        payload: <String, dynamic>{
                                          'subType': 'ConsumerSelected',
                                          'recordId': recordId,
                                        },
                                      ),
                                    ),
                                  ),
                            ));
                          },
                    child: Text(context.l10n.confirmLabel),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
