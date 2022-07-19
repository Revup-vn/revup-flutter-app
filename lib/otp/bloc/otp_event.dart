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
    required String email,
    required Completer completer,
  }) = Submit;
  const factory OTPEvent.otpResend({
    required bool isTapable,
    required String phoneNumber,
  }) = OTPResend;
  const factory OTPEvent.countDownFinish({
    required bool isTapable,
  }) = CountDownFinish;
}
