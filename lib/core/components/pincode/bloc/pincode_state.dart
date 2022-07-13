part of 'pincode_bloc.dart';

@freezed
class PincodeState with _$PincodeState {
  const factory PincodeState.initial({required bool isEnable}) = _Initial;
  const factory PincodeState.ready({required bool isEnable}) = _Ready;
  const factory PincodeState.timeComplete({required bool isTapable}) =
      _TimeComplete;
  const factory PincodeState.showOrHidePassword({
    required bool showPassword,
  }) = _ShowOrHidePassword;
}
