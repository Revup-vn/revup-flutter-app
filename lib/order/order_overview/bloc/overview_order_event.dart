part of 'overview_order_bloc.dart';

@freezed
class OverviewOrderEvent with _$OverviewOrderEvent {
  const factory OverviewOrderEvent.started() = _Started;
  const factory OverviewOrderEvent.selectedProduct({
    required String totalServiceFee,
  }) = _SelectedProduct;
  const factory OverviewOrderEvent.arrowButtonPressed({
    required bool currentStateButton,
  }) = _ArrowButtonPressed;
}
