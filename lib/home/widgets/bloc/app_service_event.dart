part of 'app_service_bloc.dart';

@freezed
class AppServiceEvent with _$AppServiceEvent {
  const factory AppServiceEvent.started({required String vehicle}) = _Started;
}
