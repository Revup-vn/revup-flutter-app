part of 'otp_bloc.dart';

@freezed
class OTPState with _$OTPState {
  const factory OTPState.initial({
    String? phoneNumber,
    required bool isTapable,
  }) = _Initial;

  const factory OTPState.success({
    required String uid,
    required String phoneNumber,
    required String photoURL,
    required String email,
    required Completer completer,
  }) = _SuccessToLogin;
  const factory OTPState.ready({required bool isTapable}) = _Ready;
  const factory OTPState.failure({required bool hasError}) = _Failure;
  const factory OTPState.loading() = _Loading;
  const factory OTPState.otpResendSuccess({
    required String phoneNumber,
  }) = _Resend;
}
