import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'invoice_payment_bloc.u.freezed.dart';
part 'invoice_payment_event.dart';
part 'invoice_payment_state.dart';

class InvoicePaymentBloc
    extends Bloc<InvoicePaymentEvent, InvoicePaymentState> {
  InvoicePaymentBloc(
    this._userRepos,
    this.repos,
  ) : super(const _Initial()) {
    on<InvoicePaymentEvent>(_onEvent);
  }
  final IStore<AppUser> _userRepos;
  final StoreRepository repos;

  FutureOr<void> _onEvent(InvoicePaymentEvent event, Emitter emit) async {
    await event.when(
      started: () async {},
      changePaymentMethod: (isPayOnline) async => emit(
        InvoicePaymentState.changePaymentMethodSuccess(
          isPaymentOnline: isPayOnline,
        ),
      ),
      sumbitPayment: (isPayOnline, totalAmount, cid, pid, sendMessage) async {
        // TODO(wamynobe): add payment method
        emit(
          const InvoicePaymentState.loading(),
        );

        //fetch data provider,
        final provider = (await _userRepos.get(pid))
            .map(
              (aUser) => aUser.map<Option<AppUser>>(
                provider: some,
                admin: (value) => none(),
                consumer: (value) => none(),
              ),
            )
            .fold<Option<AppUser>>((l) => none(), (r) => r)
            .getOrElse(
              () => throw NullThrownError(),
            );
        final tokens = (await repos.userNotificationTokenRepo(provider).all())
            .fold((l) => throw NullThrownError(), (r) => r.toList())
          ..sort(
            (a, b) => a.created.compareTo(b.created),
          );
        sendMessage(tokens.first.token, pid);
        emit(
          const InvoicePaymentState.paymentSuccess(
            paymentStatus: 'success',
          ),
        );
      },
    );
  }
}
