part of 'otp_bloc.dart';

@freezed
class OTPState with _$OTPState {
  const factory OTPState.initial({String? phoneNumber}) = _Initial;

  const factory OTPState.success({
    required String phoneNumber,
    required String accessToken,
    required PinCodeType type,
  }) = _Success;

  const factory OTPState.failure({required String errorMessage}) = _Failure;
  const factory OTPState.resend({
    required String phoneNumber,
    String? errorMessage,
  }) = _Resend;
}
