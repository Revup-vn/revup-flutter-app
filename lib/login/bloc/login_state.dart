part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String phoneNumber,
    required bool isLoginButtonEnabled,
    required String errorMessage,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        phoneNumber: '',
        isLoginButtonEnabled: false,
        errorMessage: '',
      );

  factory LoginState.readyForSubmit(String phoneNumber) => LoginState(
        phoneNumber: phoneNumber,
        isLoginButtonEnabled: true,
        errorMessage: '',
      );

  factory LoginState.failure(String errorMessage) => LoginState(
        phoneNumber: '',
        isLoginButtonEnabled: true,
        errorMessage: errorMessage,
      );

  factory LoginState.success(String phoneNumber) => LoginState(
        phoneNumber: phoneNumber,
        isLoginButtonEnabled: true,
        errorMessage: '',
      );
}
