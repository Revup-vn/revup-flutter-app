part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.started() = Started;

  const factory ChangePasswordEvent.submit({
    required String phoneNumber,
    required String newPincode,
  }) = Submit;
}
