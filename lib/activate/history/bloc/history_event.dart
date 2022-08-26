part of 'history_bloc.u.dart';

@freezed
class HistoryProviderEvent with _$HistoryProviderEvent {
  const factory HistoryProviderEvent.started() = _Started;
}
