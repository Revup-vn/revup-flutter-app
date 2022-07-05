part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String phoneNumber,
    required bool isInitial,
    required bool isLoginButtonEnabled,
    required String errorMessage,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        phoneNumber: '',
        isInitial: true,
        isLoginButtonEnabled: false,
        errorMessage: '',
      );

  factory LoginState.ready(String phoneNumber) => LoginState(
        phoneNumber: phoneNumber,
        isInitial: false,
        isLoginButtonEnabled: true,
        errorMessage: '',
      );

  factory LoginState.failure(String errorMessage) => LoginState(
        phoneNumber: '',
        isInitial: false,
        isLoginButtonEnabled: true,
        errorMessage: errorMessage,
      );

  factory LoginState.success(String phoneNumber) => LoginState(
        phoneNumber: phoneNumber,
        isInitial: false,
        isLoginButtonEnabled: true,
        errorMessage: '',
      );
}
