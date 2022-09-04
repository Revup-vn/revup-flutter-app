import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../../shared/fallbacks.dart';
import '../bloc/countdown_bloc.dart';
import '../widgets/countdown_background.dart';
import '../widgets/countdown_text.dart';

class CountdownView extends StatelessWidget {
  const CountdownView({super.key, required this.token});
  final String token;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CountdownBloc, CountdownState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => unit,
          countdownComplete: (_) => context
              .showInfoBar<void>(
                content: Text(
                  context.l10n.orderDismissed,
                ),
              )
              .then(
                (_) => _sendMessageToActiveProvider(context)
                    .then((_) async => _updateRecordToAborted(context))
                    .then(
                      (_) => context.router.popUntil(
                        (route) => route.settings.name == HomeRoute.name,
                      ),
                    ),
              ),
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            const CountdownBackground(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LimitedBox(
                  maxHeight: 70,
                  child: AutoSizeText(
                    context.l10n.orderVerificationTimeout,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Center(
                    child: BlocSelector<CountdownBloc, CountdownState, int>(
                      selector: (state) => state.secs,
                      builder: (context, state) =>
                          CountdownText(duration: state),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<Either<StoreFailure, Unit>> _updateRecordToAborted(
    BuildContext context,
  ) async {
    {
      final _irr = context.read<IStore<RepairRecord>>();

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
      return _irr.update(
        RepairRecord.aborted(
          id: record.id,
          cid: record.cid,
          pid: record.pid,
          created: record.created,
          desc: record.desc,
          vehicle: record.vehicle,
          money: 0, // Provider called of
          from: record.from,
          to: record.to,
        ),
      );
    }
  }

  Future<bool> _sendMessageToActiveProvider(BuildContext context) =>
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
          );
}
