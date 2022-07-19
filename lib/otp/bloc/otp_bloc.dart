import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

class OTPBloc extends Bloc<OTPEvent, OTPState> {
  OTPBloc() : super(const _Initial(isTapable: false)) {
    on<Started>(
      (event, emit) {
        emit(
          OTPState.initial(isTapable: event.isTapable),
        );
      },
    );
    on<Submit>(
      (event, emit) {
        emit(
          OTPState.success(
            completer: event.completer,
            phoneNumber: event.phoneNumber,
            photoURL: event.photoURL,
            uid: event.uid,
            email: event.email,
          ),
        );
      },
    );
    on<OTPResend>(
      (event, emit) {
        emit(
          OTPState.initial(
            phoneNumber: event.phoneNumber,
            isTapable: false,
          ),
        );
      },
    );
    on<CountDownFinish>(
      (event, emit) {
        emit(
          const OTPState.ready(isTapable: true),
        );
      },
    );
  }
}
