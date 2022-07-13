part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;

  const factory ChangePasswordState.success({
    required String phoneNumber,
    required String newPincode,
  }) = _Success;

  const factory ChangePasswordState.failure({
    required String errorMessage,
  }) = _Failure;
}
