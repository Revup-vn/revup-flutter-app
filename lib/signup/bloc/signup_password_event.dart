part of 'signup_password_bloc.dart';

@freezed
class SignupPasswordEvent with _$SignupPasswordEvent {
  const factory SignupPasswordEvent.started() = Started;
  const factory SignupPasswordEvent.submit({required String pincode}) = Submit;
}
