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

class RequestDetailsLive extends StatelessWidget {
  const RequestDetailsLive({
    super.key,
    required this.providerData,
    required this.movingFees,
  });
  final ProviderData providerData;
  final int movingFees;

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
            bottom: 28,
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
                    AspectRatio(
                      aspectRatio: 0.7,
                      child: Column(
                        children: [
                          ServiceAvatar(
                            imageUrl: providerData.avatar,
                          ),
                          AutoSizeText(
                            providerData.fullName,
                            maxLines: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                providerData.rating.toString(),
                                maxLines: 1,
                              ),
                              const Icon(Icons.star_rate_rounded),
                              AutoSizeText(
                                '''(${providerData.ratingCount.toString()})''',
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
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
                                    makePhoneCall(providerData.phone);
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
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
              ElevatedButton(
                onPressed: () {
                  context.read<H16MapRouteBloc>().add(
                        H16MapRouteEvent.confirmArrival(
                          onRoute: () =>
                              context.router.push(const RepairStatusRoute()),
                          sendMessage: (token) => context
                              .read<NotificationCubit>()
                              .sendMessageToToken(
                                SendMessage(
                                  title: 'Revup',
                                  body: '',
                                  token: token,
                                  icon: kRevupIconApp,
                                  payload: MessageData(
                                    type: NotificationType.VerifiedArrival,
                                    payload: <String, dynamic>{},
                                  ),
                                ),
                              ),
                        ),
                      );
                },
                child: AutoSizeText(l10n.repairerArrivedLabel),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
