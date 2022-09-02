part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.started() = _Started;
  const factory SignupEvent.submited({
    required AppUser aUser,
    required File imgFile,
    required Completer<AppUser> completer,
  }) = _Submited;
}
