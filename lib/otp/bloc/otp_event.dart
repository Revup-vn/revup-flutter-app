part of 'otp_bloc.dart';

@freezed
class OTPEvent with _$OTPEvent {
  const factory OTPEvent.started({
    required bool isTapable,
  }) = Started;
  const factory OTPEvent.submit({
    required String uid,
    required String phoneNumber,
    required String photoURL,
    required Completer completer,
  }) = Submit;
  const factory OTPEvent.submitToSignup({
    required String phoneNumber,
    required String otpCode,
  }) = SubmitToSignup;
  const factory OTPEvent.pressedResendOTP({
    required bool isTapable,
    required String phoneNumber,
  }) = PressResendOTP;
  const factory OTPEvent.countDownFinish({
    required bool isTapable,
  }) = CountDownFinish;
}
