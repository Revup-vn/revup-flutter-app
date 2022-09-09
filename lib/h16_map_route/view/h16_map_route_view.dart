import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../h6_request_provider/widgets/request_details_live.dart';
import '../../h6_request_provider/widgets/request_provider_live.dart';
import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../shared/fallbacks.dart';
import '../../shared/widgets/custom_dialog.dart';
import '../../shared/widgets/loading.u.dart';
import '../bloc/h16_map_route_bloc.dart';

class H16MapRoute extends StatelessWidget {
  const H16MapRoute({super.key, required this.user});
  final AppUser user;

  @override
  Widget build(BuildContext context) {
    final blocPage = context.watch<H16MapRouteBloc>();
    final cubit = context.read<NotificationCubit>();
    final routerFake = context.router;
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const H16MapRouteEvent.started()),
    );
    return BlocBuilder<H16MapRouteBloc, H16MapRouteState>(
      builder: (context, state) {
        var willPop = false;
        return state.maybeWhen(
          orElse: Loading.new,
          success: (directions, fromMaker, toMarker, providerData, movingFees) {
            return WillPopScope(
              onWillPop: () async {
                var isPop = true;
                if (willPop) {
                  isPop = true;
                } else {
                  isPop = false;
                }
                return isPop;
              },
              child: Scaffold(
                body: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    RequestProviderLive(
                      directions: directions,
                      fromMaker: fromMaker,
                      toMarker: toMarker,
                      providerData: providerData,
                      movingFees: movingFees,
                      userStore: context.read(),
                    ),
                    RequestDetailsLive(
                      providerData: providerData,
                      movingFees: movingFees,
                    ),
                    Positioned(
                      top: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: ElevatedButton(
                          onPressed: () async {
                            await showDialog<void>(
                              barrierDismissible: false,
                              context: context,
                              builder: (bcontext) => SimpleDialogCustom(
                                height: 250,
                                content: [
                                  AutoSizeText(
                                    context.l10n.sureLabel,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  AutoSizeText(
                                    context.l10n.cancelThisLabel,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                                button: [
                                  TextButton(
                                    onPressed: () async {
                                      await _onAbortRequest(
                                          context, cubit, routerFake);
                                      await bcontext.router.pop();
                                      willPop = true;
                                      context.router.popUntil(
                                        (route) =>
                                            route.settings.name ==
                                            HomeRoute.name,
                                      );
                                    },
                                    child: AutoSizeText(
                                      context.l10n.yesLabel,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      bcontext.router.pop();
                                    },
                                    child: AutoSizeText(
                                      context.l10n.cancelLabel,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          style: Theme.of(context)
                              .elevatedButtonTheme
                              .style
                              ?.copyWith(
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
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _onAbortRequest(
    BuildContext context,
    NotificationCubit cubit,
    StackRouter router,
  ) async =>
      context.read<H16MapRouteBloc>().add(
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
                                  .compareTo(DateTime.now()) <
                              0
                      ? value.copyWith(
                          violatedTimes: 1,
                          bannedValidatedDate:
                              DateTime.now().add(const Duration(days: 7)),
                        )
                      : value.copyWith(violatedTimes: value.violatedTimes + 1),
                  // guarantee be external invariance
                );

                if (!(await _iau.update(uUser))
                    .fold((l) => false, (r) => true)) {
                  return;
                }

                final record = (await _irr.queryTs(
                  (a) => a
                      .where(
                        RepairRecordDummy.field(RepairRecordFields.ConsumerId),
                        isEqualTo:
                            context.read<AuthenticateBloc>().state.maybeMap(
                                  orElse: () => throw NullThrownError(),
                                  authenticated: (value) =>
                                      value.authType.user.uuid,
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
                              ), (_) async {
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
              sendMessage: (token) => cubit.sendMessageToToken(
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
