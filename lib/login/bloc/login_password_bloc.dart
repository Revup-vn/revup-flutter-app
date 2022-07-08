import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_password_bloc.freezed.dart';
part 'login_password_event.dart';
part 'login_password_state.dart';
part 'login_password_bloc.g.dart';

class LoginPasswordBloc extends Bloc<LoginPasswordEvent, LoginPasswordState> {
  LoginPasswordBloc(this.errorMessageLabel) : super(const _Initial()) {
    on<LoginPasswordEvent>(_onEvent);
    on<Submit>(_onSubmit, transformer: restartable());
  }
  final String _phoneNumber = '+84 163999999';
  final String _pinCode = '123456';
  final String errorMessageLabel;

  FutureOr<void> _onEvent(
    LoginPasswordEvent event,
    Emitter<LoginPasswordState> emit,
  ) =>
      event.when(
        start: (phoneNumber) =>
            emit(LoginPasswordState.initial(phoneNumber: phoneNumber)),
        submit: (_, __) {},
      );

  FutureOr<void> _onSubmit(
    Submit event,
    Emitter<LoginPasswordState> emit,
  ) async {
    if(event.phoneNumber == _phoneNumber && event.pinCode == _pinCode){

    }else{
      emit(
            LoginPasswordState.failure(
              errorMessage: errorMessageLabel,
              phoneNumber: event.phoneNumber,
            ),
          );
    }
  }
}
