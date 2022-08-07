part of 'add_message_bloc.dart';

@freezed
class AddMessageState with _$AddMessageState {
  const factory AddMessageState.initial() = _Initial;
  const factory AddMessageState.loading() = _Loading;
  const factory AddMessageState.failure() = _Failure;
  const factory AddMessageState.success() = _Success;
}
