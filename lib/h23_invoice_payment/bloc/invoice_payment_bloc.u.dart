import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../order/models/pending_service_model.dart';

part 'invoice_payment_bloc.u.freezed.dart';
part 'invoice_payment_event.dart';
part 'invoice_payment_state.dart';

class InvoicePaymentBloc
    extends Bloc<InvoicePaymentEvent, InvoicePaymentState> {
  InvoicePaymentBloc(
    this._userRepos,
    this.repos,
    this.recordId,
    this.user,
    this.storeRepository,
  ) : super(const _Initial()) {
    on<InvoicePaymentEvent>(_onEvent);
  }
  final IStore<AppUser> _userRepos;
  final StoreRepository repos;
  final String recordId;
  final AppUser user;
  final StoreRepository storeRepository;

  FutureOr<void> _onEvent(InvoicePaymentEvent event, Emitter emit) async {
    await event.when(
      started: () async {},
      changePaymentMethod: (isPayOnline) async => emit(
        InvoicePaymentState.changePaymentMethodSuccess(
          isPaymentOnline: isPayOnline,
        ),
      ),
      sumbitPayment: (
        isPayOnline,
        totalAmount,
        services,
        cid,
        pid,
        sendMessage,
        pay,
      ) async {
        emit(const InvoicePaymentState.loading());
        log('PAYMENT ONLINE :: ${isPayOnline.toString()}');

        if (services.isNotEmpty && isPayOnline) {
          pay(
            recordId,
            'Revup',
            '${user.firstName} ${user.lastName}',
          );
        } else {
          // get latest consumer fcm token
          final provider = (await _userRepos.get(pid))
              .fold<Option<AppUser>>(
                (l) => none(),
                some,
              )
              .getOrElse(() => throw NullThrownError());
          final tokens = (await storeRepository
                  .userNotificationTokenRepo(provider)
                  .all())
              .map(
                (r) => r.sort(
                  orderBy(StringOrder.reverse(), (a) => a.created.toString()),
                ),
              )
              .fold((l) => throw NullThrownError(), (r) => r.toList());
          log('TOKEN:${tokens.first.token}');
          sendMessage(tokens.first.token, pid);
          emit(
            const InvoicePaymentState.paymentSuccess(
              paymentStatus: 'success',
            ),
          );
        }
      },
    );
  }
}
