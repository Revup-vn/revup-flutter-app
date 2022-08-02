part of 'order_service_bloc.dart';

@freezed
class OrderServiceEvent with _$OrderServiceEvent {
  const factory OrderServiceEvent.started() = _Started;
}
