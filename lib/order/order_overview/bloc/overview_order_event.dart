part of 'overview_order_bloc.dart';

@freezed
class OverviewOrderEvent with _$OverviewOrderEvent {
  const factory OverviewOrderEvent.started() = _Started;
}
