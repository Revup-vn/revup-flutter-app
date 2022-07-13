part of 'otp_bloc.dart';

@freezed
class OTPEvent with _$OTPEvent {
  const factory OTPEvent.started({
    required bool isTapable,
  }) = Started;
  const factory OTPEvent.submitToLogin({
    required String phoneNumber,
    required String otpCode,
  }) = SubmitToLogin;
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
