part of 'pincode_bloc.dart';

@freezed
class PincodeEvent with _$PincodeEvent {
  const factory PincodeEvent.started({required bool isEnable}) = Started;
  const factory PincodeEvent.pressedResendOTP({
    required bool isTapable,
  }) = PressResendOTP;
}
