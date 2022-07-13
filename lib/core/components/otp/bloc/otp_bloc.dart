import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../pincode/pincode_enums.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

class OTPBloc extends Bloc<OTPEvent, OTPState> {
  OTPBloc(this.errorMessage, this.type) : super(const _Initial()) {
    var errorMessageLabel = '';
    on<Started>(
      (event, emit) {
        emit(
          OTPState.initial(phoneNumber: event.phoneNumber),
        );
      },
    );
    on<Submit>(
      (event, emit) {
        final accessToken = getAccessToken(event.phoneNumber, event.otpCode);
        if (accessToken != '') {
          emit(
            OTPState.success(
              phoneNumber: event.phoneNumber,
              accessToken: accessToken,
              type: type,
            ),
          );
        } else {
          errorMessageLabel = errorMessage;
          emit(OTPState.failure(errorMessage: errorMessageLabel));
        }
      },
    );
    on<PressResendOTP>(
      (event, emit) {
        emit(
          OTPState.resend(
            phoneNumber: event.phoneNumber,
            errorMessage: errorMessageLabel,
          ),
        );
      },
    );
  }
  final PinCodeType type;
  final String errorMessage;
  String getAccessToken(String phoneNumber, String otp) {
    return (phoneNumber == '+84 163999999' && otp == '123456') ? 'aaa' : '';
  }
}
