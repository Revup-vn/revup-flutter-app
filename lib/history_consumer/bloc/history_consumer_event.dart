part of 'history_consumer_bloc.dart';

@freezed
class HistoryConsumerEvent with _$HistoryConsumerEvent {
  const factory HistoryConsumerEvent.started() = _Started;
}
