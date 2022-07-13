part of 'enter_new_password_bloc.dart';

@freezed
class EnterNewPasswordEvent with _$EnterNewPasswordEvent {
  const factory EnterNewPasswordEvent.started() = Started;

  const factory EnterNewPasswordEvent.submit({
    required String phoneNumber,
    required String pincode,
    String? accessToken,
  }) = Submit;
}
