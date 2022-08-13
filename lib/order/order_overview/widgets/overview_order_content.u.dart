import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../../../service/choose_service/bloc/choose_service_bloc.u.dart';
import '../../../service/widgets/service_avatar.dart';
import '../../../shared/utils.dart';
import '../models/overview_order_model.dart';

class OverviewOrderContent extends StatefulWidget {
  const OverviewOrderContent({
    super.key,
    required this.modelData,
    required this.serviceCount,
  });
  final OverviewOrderModel modelData;
  final int serviceCount;

  @override
  State<OverviewOrderContent> createState() => _OverviewOrderContentState();
}

class _OverviewOrderContentState extends State<OverviewOrderContent> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    final blocChooseSv = context.watch<ChooseServiceBloc>();

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
                          imageUrl: widget.modelData.providerAvatarImg,
                        ),
                        AutoSizeText(
                          widget.modelData.providerName,
                          style: Theme.of(context).textTheme.bodyLarge,
                          maxLines: 1,
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
                          widget.modelData.proviverPhoneNumber,
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
                                  '''${widget.serviceCount} ${context.l10n.serviceCountLabel}''',
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
                    blocChooseSv.add(
                      const ChooseServiceEvent.detailRequestAccepted(),
                    );
                    context.router.push(
                      ChooseServiceRoute(
                        providerId: widget.modelData.providerID,
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
                        text: '${widget.modelData.distance}km',
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
                                text: '15.000đ',
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
                                  text: '15.000đ',
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
                                  text: '450.000đ',
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
          ],
        ),
      ),
    );
  }
}
