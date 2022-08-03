part of 'history_consumer_bloc.dart';

@freezed
class HistoryConsumerState with _$HistoryConsumerState {
  const factory HistoryConsumerState.initial() = _Initial;
  const factory HistoryConsumerState.loading() = _Loading;
  const factory HistoryConsumerState.failure() = _Failure;
  const factory HistoryConsumerState.success(
    List<HistoryConsumerModel> histories,
  ) = _Success;
}
