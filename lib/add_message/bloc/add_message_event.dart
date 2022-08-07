part of 'add_message_bloc.dart';

@freezed
class AddMessageEvent with _$AddMessageEvent {
  const factory AddMessageEvent.started() = _Started;
  const factory AddMessageEvent.submitted({required MessageData messageData}) =
      _Submitted;
}
