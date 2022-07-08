part of 'login_password_bloc.dart';

@freezed
class LoginPasswordEvent with _$LoginPasswordEvent {
  const factory LoginPasswordEvent.start({required String phoneNumber}) = Start;

  const factory LoginPasswordEvent.submit({
    required String phoneNumber,
    required String pinCode,
  }) = Submit;
}
