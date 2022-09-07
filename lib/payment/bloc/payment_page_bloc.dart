import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'payment_page_bloc.freezed.dart';
part 'payment_page_event.dart';
part 'payment_page_state.dart';

class PaymentPageBloc extends Bloc<PaymentPageEvent, PaymentPageState> {
  PaymentPageBloc(this._userStore, this.sr, this.userId)
      : super(const _Initial()) {
    on<PaymentPageEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final StoreRepository sr;
  final String userId;

  FutureOr<void> _onEvent(
    PaymentPageEvent event,
    Emitter<PaymentPageState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const PaymentPageState.loading());
        // final _paymentAccount =
        //     sr.paymentAccount(AppUserDummy.dummyProvider(userId));
        // (await _paymentAccount.all()).fold(
        //   (l) => emit(const PaymentPageState.failure()),
        //   (r) => emit(
        //     PaymentPageState.success(
        //       paymentAccount:
        //           r.headOption.getOrElse(() => throw NullThrownError()),
        //     ),
        //   ),
        // );
        await Future<dynamic>.delayed(const Duration(milliseconds: 200));
        emit(const PaymentPageState.success());
      },
    );
  }
}
