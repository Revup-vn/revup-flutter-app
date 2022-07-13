part of 'signup_password_bloc.dart';

@freezed
class SignupPasswordState with _$SignupPasswordState {
  const factory SignupPasswordState.initial() = _Initial;

  const factory SignupPasswordState.success({required String pincode}) =
      _Success;
}
