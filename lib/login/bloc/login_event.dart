part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;
  const factory LoginEvent.signInWithPhoneNumberPressed() =
      SignInWithPhoneNumberPressed;
}
