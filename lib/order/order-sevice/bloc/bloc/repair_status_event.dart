part of 'repair_status_bloc.dart';

@freezed
class RepairStatusEvent with _$RepairStatusEvent {
  const factory RepairStatusEvent.started() = _Started;
}
