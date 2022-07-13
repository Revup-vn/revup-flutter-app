import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc(this.errorMessage) : super(const _Initial()) {
    on<Started>((event, emit) {});

    on<Submit>((event, emit) {
      if (event.newPincode == currentPincode) {
        emit(
          ChangePasswordState.success(
            phoneNumber: event.phoneNumber,
            newPincode: event.newPincode,
          ),
        );
      } else {
        log('message');
        emit(
          ChangePasswordState.failure(
            errorMessage: errorMessage,
          ),
        );
      }
    });
  }
  final String errorMessage;
  final String currentPincode = '123456';
}
