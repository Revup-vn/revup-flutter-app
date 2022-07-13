part of 'login_password_bloc.dart';

@freezed
class LoginPasswordState with _$LoginPasswordState {
  const factory LoginPasswordState.initial({String? phoneNumber}) = _Initial;
  // const factory LoginPasswordState.success({required String user})
  // = _Success;
  const factory LoginPasswordState.failure({
    required String errorMessage,
  }) = _Failure;
  // const factory LoginPasswordState.loading() = _Loading;
  const factory LoginPasswordState.success({
    required String user,
  }) = _Success;

  factory LoginPasswordState.fromJson(Map<String, dynamic> json) =>
      _$LoginPasswordStateFromJson(json);
}
