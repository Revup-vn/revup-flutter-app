part of 'overview_order_bloc.u.dart';

@freezed
class OverviewOrderState with _$OverviewOrderState {
  const factory OverviewOrderState.initial() = _Initial;
  const factory OverviewOrderState.loadDataSuccess({
    required OverviewOrderModel overviewOrderData,
    required int serviceCount,
  }) = _LoadDataSuccess;
  const factory OverviewOrderState.loading() = _Loading;
  const factory OverviewOrderState.failure() = _Failure;
}
