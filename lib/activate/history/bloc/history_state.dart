part of 'history_bloc.u.dart';

@freezed
class HistoryProviderState with _$HistoryProviderState {
  const factory HistoryProviderState.initial() = _Initial;
  const factory HistoryProviderState.loading() = _Loading;
  const factory HistoryProviderState.failure() = _Failure;
  const factory HistoryProviderState.success(
    List<HistoryItemModel> histories,
  ) = _Success;
}
