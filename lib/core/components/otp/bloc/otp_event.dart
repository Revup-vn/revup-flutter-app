part of 'otp_bloc.dart';

@freezed
class OTPEvent with _$OTPEvent {
  const factory OTPEvent.started({
    required String phoneNumber,
  }) = Started;
  const factory OTPEvent.submit({
    required String phoneNumber,
    required String otpCode,
  }) = Submit;
  const factory OTPEvent.pressResendOTP({
    required String phoneNumber,
    String? errorMessage,
  }) = PressResendOTP;
}
