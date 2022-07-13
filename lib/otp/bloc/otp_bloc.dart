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
    on<SubmitToLogin>(
      (event, emit) {
        final credential = getCredential(event.phoneNumber, event.otpCode);
        if (credential != '') {
          emit(
            OTPState.successToLogin(
              phoneNumber: event.phoneNumber,
              credentials: credential,
            ),
          );
        } else {
          emit(
            const OTPState.failure(hasError: true),
          );
        }
      },
    );
    on<PressResendOTP>(
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
    on<SubmitToSignup>(
      (event, emit) {
        final credential = getCredential(event.phoneNumber, event.otpCode);
        if (credential != '') {
          emit(
            OTPState.successToSignup(
              phoneNumber: event.phoneNumber,
              credentials: credential,
            ),
          );
        }
      },
    );
  }
  String getCredential(String phoneNumber, String otp) {
    return (phoneNumber == '+84 163999999' && otp == '123456') ? 'aaa' : '';
  }
}
