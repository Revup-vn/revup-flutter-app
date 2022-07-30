part of 'overview_order_bloc.dart';

@freezed
class OverviewOrderState with _$OverviewOrderState {
  const factory OverviewOrderState.initial() = _Initial;
  const factory OverviewOrderState.ready({
    required String totalFeeService,
    required bool ready,
  }) = _Ready;
  const factory OverviewOrderState.loading() = _Loading;
  const factory OverviewOrderState.failure() = _Failure;
  const factory OverviewOrderState.showListFee({required bool showListFee}) =
      _ShowListFee;
}
