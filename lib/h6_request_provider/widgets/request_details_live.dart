import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../h16_map_route/bloc/h16_map_route_bloc.dart';
import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../service/widgets/service_avatar.dart';
import '../../shared/fallbacks.dart';
import '../../shared/utils.dart';
import '../../shared/widgets/custom_dialog.dart';

class RequestDetailsLive extends StatefulWidget {
  const RequestDetailsLive({
    super.key,
    required this.providerData,
    required this.movingFees,
  });
  final ProviderData providerData;
  final int movingFees;

  @override
  State<RequestDetailsLive> createState() => _RequestDetailsLiveState();
}

class _RequestDetailsLiveState extends State<RequestDetailsLive> {
  late bool isEnable;
  late String repairRecord;
  @override
  void initState() {
    super.initState();
    isEnable = false;
    context.read<NotificationCubit>().addForegroundListener((p0) {
      final type = p0.payload.type;
      switch (type) {
        case NotificationType.NormalMessage:
          final subType = p0.payload.payload['subType'] as String;
          if (subType == 'StartRepair') {
            final recordId = p0.payload.payload['recordId'] as String;
            context.router.push(
              RepairStatusRoute(recordId: recordId),
            );
            context.router.removeWhere(
              (route) => route.name == MapRouteRoute.name,
            );
          }
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
                      bcontext.router.pop();
                      context.router.popUntil(
                        (route) => route.settings.name == HomeRoute.name,
                      );
                      context.router.removeWhere(
                        (route) => route.name == MapRouteRoute.name,
                      );
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
        case NotificationType.VerifiedArrival:
          showDialog<void>(
            barrierDismissible: false,
            context: context,
            builder: (context) => SimpleDialogCustom(
              height: 150,
              content: [
                AutoSizeText(
                  context.l10n.arrivedRepairmanLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
              button: [
                TextButton(
                  onPressed: () {
                    if (mounted) {
                      setState(() {
                        isEnable = true;
                      });
                    }
                    context.router.pop();
                  },
                  child: AutoSizeText(
                    context.l10n.understoodLabel,
                  ),
                ),
              ],
            ),
          );
          break;
        // ignore: no_default_cases
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 320,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 8,
              ),
              Center(
                child: AutoSizeText(
                  l10n.repairerArrivedLabel,
                  style: Theme.of(context).textTheme.titleLarge ??
                      const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const Divider(),
              SizedBox(
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 0.7,
                        child: Column(
                          children: [
                            ServiceAvatar(
                              imageUrl: widget.providerData.avatar,
                              userName: widget.providerData.fullName,
                            ),
                            AutoSizeText(
                              widget.providerData.fullName,
                              maxLines: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  widget.providerData.rating.isNaN ||
                                          widget.providerData.rating == 0
                                      ? '0'
                                      : widget.providerData.rating
                                          .toStringAsFixed(1),
                                  maxLines: 1,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                                AutoSizeText(
                                  '''(${widget.providerData.ratingCount.toString()})''',
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                                    // TODO(cantgim): do sthg here
                                  },
                                  icon: Icon(
                                    Icons.list_alt,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
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
                                    makePhoneCall(widget.providerData.phone);
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
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
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.videocam,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: AutoSizeText.rich(
                  TextSpan(
                    text: '${l10n.warningLabel} : ',
                    children: [
                      TextSpan(
                        text: l10n.warningDesLabel,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: isEnable
                    ? () {
                        context.read<H16MapRouteBloc>().add(
                              H16MapRouteEvent.confirmArrival(
                                onRoute: () {},
                                sendMessage: (token, pid) => context
                                    .read<NotificationCubit>()
                                    .sendMessageToToken(
                                      SendMessage(
                                        title: 'Revup',
                                        body: '',
                                        token: token,
                                        icon: kRevupIconApp,
                                        payload: MessageData(
                                          type:
                                              NotificationType.VerifiedArrival,
                                          payload: <String, dynamic>{},
                                        ),
                                      ),
                                    ),
                              ),
                            );
                      }
                    : null,
                child: AutoSizeText(l10n.repairerArrivedLabel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
