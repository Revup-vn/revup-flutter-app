import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../h6_request_provider/widgets/request_details_live.dart';
import '../../h6_request_provider/widgets/request_provider_live.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../shared/fallbacks.dart';
import '../../shared/widgets/loading.u.dart';
import '../bloc/h16_map_route_bloc.dart';

class H16MapRoute extends StatelessWidget {
  const H16MapRoute({super.key, required this.user});
  final AppUser user;

  @override
  Widget build(BuildContext context) {
    final blocPage = context.watch<H16MapRouteBloc>();
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const H16MapRouteEvent.started()),
    );

    return BlocBuilder<H16MapRouteBloc, H16MapRouteState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: Loading.new,
          success: (directions, fromMaker, toMarker, providerData, movingFees) {
            return Scaffold(
              body: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  RequestProviderLive(
                    directions: directions,
                    fromMaker: fromMaker,
                    toMarker: toMarker,
                    providerData: providerData,
                    movingFees: movingFees,
                    userStore: context.read(),
                  ),
                  Positioned(
                    bottom: 0,
                    child: RequestDetailsLive(
                      providerData: providerData,
                      movingFees: movingFees,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 30,
                    left: 16,
                    child: ElevatedButton(
                      onPressed: () async => _onAbortRequest(context),
                      style:
                          Theme.of(context).elevatedButtonTheme.style?.copyWith(
                                backgroundColor: MaterialStateColor.resolveWith(
                                  (_) => Colors.red,
                                ),
                                foregroundColor: MaterialStateColor.resolveWith(
                                  (_) => Colors.white,
                                ),
                              ),
                      child: Text(context.l10n.cancelLabel),
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

  Future<void> _onAbortRequest(BuildContext context) async {
    context.read<H16MapRouteBloc>().add(
          H16MapRouteEvent.confirmArrival(
            onRoute: () async {
              final _irr = context.read<IStore<RepairRecord>>();

              final record = (await _irr.queryTs(
                (a) => a
                    .where(
                      RepairRecordDummy.field(RepairRecordFields.ConsumerId),
                      isEqualTo: context
                          .read<AuthenticateBloc>()
                          .state
                          .maybeMap(
                            orElse: () => throw NullThrownError(),
                            authenticated: (value) => value.authType.user.uuid,
                          ),
                    )
                    .orderBy(
                      RepairRecordDummy.field(
                        RepairRecordFields.CreateDate,
                      ),
                      descending: true,
                    )
                    .limit(1)
                    .get(),
              ))
                  .toOption()
                  .map(
                    (a) => a.headOption.map((a) => a).getOrElse(
                          () => throw NullThrownError(),
                        ),
                  )
                  .getOrElse(() => throw NullThrownError());
              await _irr
                  .update(
                    RepairRecord.aborted(
                      id: record.id,
                      cid: record.cid,
                      pid: record.pid,
                      created: record.created,
                      desc: record.desc,
                      vehicle: record.vehicle,
                      money: record.money,
                      from: record.from,
                      to: record.to,
                    ),
                  )
                  .then(
                    (value) => value.fold(
                        (_) => ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(context.l10n.generalRetryError),
                              ),
                            ), (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(context.l10n.userAbortTheRequest),
                        ),
                      );
                      return context.router.popUntil(
                        (route) => route.settings.name == HomeRoute.name,
                      );
                    }),
                  );
            },
            sendMessage: (token) => context
                .read<NotificationCubit>()
                .sendMessageToToken(
                  SendMessage(
                    title: 'Revup',
                    body: '',
                    token: token,
                    icon: kRevupIconApp,
                    payload: MessageData(
                      type: NotificationType.NormalMessage,
                      payload: <String, dynamic>{'subType': 'ConsumerCanceled'},
                    ),
                  ),
                ),
          ),
        );
  }
}
