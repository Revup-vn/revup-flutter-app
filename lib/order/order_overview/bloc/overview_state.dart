part of 'overview_bloc.dart';

@freezed
class OverviewState with _$OverviewState {
  const factory OverviewState.initial() = _Initial;
  const factory OverviewState.ready({
    required String totalFeeService,
    required bool ready,
  }) = _Ready;
  const factory OverviewState.showListFee({
    required bool showListFee,
  }) = _ShowListFee;
}
