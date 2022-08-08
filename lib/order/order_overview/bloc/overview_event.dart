part of 'overview_bloc.u.dart';

@freezed
class OverviewEvent with _$OverviewEvent {
  const factory OverviewEvent.started() = _Started;
  const factory OverviewEvent.selectedProduct({
    required String totalServiceFee,
  }) = _SelectedProduct;
  const factory OverviewEvent.arrowButtonPressed({
    required bool currentStateButton,
  }) = _ArrowButtonPressed;
}
