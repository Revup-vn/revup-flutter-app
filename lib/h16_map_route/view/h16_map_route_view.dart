import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../h6_request_provider/widgets/request_details_live.dart';
import '../../h6_request_provider/widgets/request_provider_live.dart';
import '../../l10n/l10n.dart';
import '../../shared/fallbacks.dart';
import '../bloc/h16_map_route_bloc.dart';

class H16MapRoute extends StatelessWidget {
  const H16MapRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final blocPage = context.watch<H16MapRouteBloc>();
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const H16MapRouteEvent.started()),
    );

    return BlocBuilder<H16MapRouteBloc, H16MapRouteState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
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
                    top: MediaQuery.of(context).padding.top + 50,
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

  Future<void> _onAbortRequest(BuildContext context) async => context
      .read<H16MapRouteBloc>()
      .add(
        H16MapRouteEvent.confirmArrival(
          onRoute: () async {
            final _irr = context.read<IStore<RepairRecord>>();
            final _iau = context.read<IStore<AppUser>>();
            final uid = context.read<AuthenticateBloc>().state.maybeMap(
                  orElse: () => throw NullThrownError(),
                  authenticated: (value) => value.authType.user.uuid,
                );

            final user = (await _iau.get(uid))
                .toOption()
                .getOrElse(() => throw NullThrownError());

            final uUser = user.maybeMap(
              orElse: () => throw NullThrownError(),
              consumer: (value) => value.violatedTimes == 0 ||
                      (value.bannedValidatedDate ?? DateTime.now())
                              .compareTo(DateTime.now()) >
                          0
                  ? value.copyWith(
                      violatedTimes: 1,
                      bannedValidatedDate:
                          DateTime.now().add(const Duration(days: 7)),
                    )
                  : value.copyWith(violatedTimes: value.violatedTimes + 1),
              // guarantee be external invariance
            );

            if (!(await _iau.update(uUser)).fold((l) => false, (r) => true)) {
              return;
            }

            final record = (await _irr.queryTs(
              (a) => a
                  .where(
                    RepairRecordDummy.field(RepairRecordFields.ConsumerId),
                    isEqualTo: context.read<AuthenticateBloc>().state.maybeMap(
                          orElse: () => throw NullThrownError(),
                          authenticated: (value) => value.authType.user.uuid,
                        ),
                  )
                  .orderBy(
                    RepairRecordDummy.field(
                      RepairRecordFields.CreateDate,
                    ),
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
                    (_) => context.showErrorBar<void>(
                      content: Text(context.l10n.generalRetryError),
                    ),
                    (_) => context
                        .showInfoBar<void>(
                          content: Text(context.l10n.userAbortTheRequest),
                        )
                        .then(
                          (value) => context.router.popUntilRoot(),
                        ),
                  ),
                );
          },
          sendMessage: (token) =>
              context.read<NotificationCubit>().sendMessageToToken(
                    SendMessage(
                      title: 'Revup',
                      body: '',
                      token: token,
                      icon: kRevupIconApp,
                      payload: MessageData(
                        type: NotificationType.ProviderDecline,
                        payload: <String, dynamic>{},
                      ),
                    ),
                  ),
        ),
      );
}
