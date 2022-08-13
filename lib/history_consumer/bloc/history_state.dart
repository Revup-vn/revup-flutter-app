part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.failure() = _Failure;
  const factory HistoryState.success(
    IList<HistoryModel> histories,
  ) = _Success;
}
