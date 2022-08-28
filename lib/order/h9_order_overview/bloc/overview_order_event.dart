part of 'overview_order_bloc.u.dart';

@freezed
class OverviewOrderEvent with _$OverviewOrderEvent {
  const factory OverviewOrderEvent.started() = _Started;
  const factory OverviewOrderEvent.submitted({
    required Function0<void> onRoute,
    required Function2<String, String, void> sendMessage,
  }) = _Submitted;
}
