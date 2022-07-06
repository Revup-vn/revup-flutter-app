part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChangedIsValid(String phoneNumber) =
      PhoneNumberChangedIsValid;
  const factory LoginEvent.phoneNumberChangedIsInvalid() =
      PhoneNumberChangedIsInvalid;
  const factory LoginEvent.signInWithPhoneNumberPressed() = _PhoneNumberSignIn;
}
