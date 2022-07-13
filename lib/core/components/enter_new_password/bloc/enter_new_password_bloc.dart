import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../pincode/pincode_enums.dart';

part 'enter_new_password_event.dart';
part 'enter_new_password_state.dart';
part 'enter_new_password_bloc.freezed.dart';

class EnterNewPasswordBloc
    extends Bloc<EnterNewPasswordEvent, EnterNewPasswordState> {
  EnterNewPasswordBloc(this.type, this.errorMessage, this.accessToken)
      : super(const _Initial()) {
    const currentPincode = '654321';
    on<Started>((event, emit) {
      emit(
        const EnterNewPasswordState.initial(),
      );
    });
    on<Submit>(
      (event, emit) {
        if (event.pincode != currentPincode) {
          emit(
            EnterNewPasswordState.success(
              phoneNumber: event.phoneNumber,
              pincode: event.pincode,
              accessToken: accessToken,
              type: type,
            ),
          );
        } else {
          emit(
            const EnterNewPasswordState.failure(),
          );
        }
      },
    );
  }
  final String? accessToken;
  final PinCodeType type;
  final String errorMessage;
}
