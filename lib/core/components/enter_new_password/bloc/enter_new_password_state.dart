part of 'enter_new_password_bloc.dart';

@freezed
class EnterNewPasswordState with _$EnterNewPasswordState {
  const factory EnterNewPasswordState.initial() = _Initial;

  const factory EnterNewPasswordState.success({
    required String phoneNumber,
    required String pincode,
    required PinCodeType type,
    required String? accessToken,
  }) = _Success;

  const factory EnterNewPasswordState.failure() = _Failure;
}
