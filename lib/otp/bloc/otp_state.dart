part of 'otp_bloc.dart';

@freezed
class OTPState with _$OTPState {
  const factory OTPState.initial({
    String? phoneNumber,
    required bool isTapable,
  }) = _Initial;

  const factory OTPState.successToLogin({
    required String phoneNumber,
    required String credentials,
  }) = _SuccessToLogin;
  const factory OTPState.successToSignup({
    required String phoneNumber,
    required String credentials,
  }) = _SuccessToSignup;
  const factory OTPState.ready({required bool isTapable}) = _Ready;
  const factory OTPState.failure({required bool hasError}) = _Failure;
  const factory OTPState.loading() = _Loading;
  const factory OTPState.resend({
    required String phoneNumber,
  }) = _Resend;
}
