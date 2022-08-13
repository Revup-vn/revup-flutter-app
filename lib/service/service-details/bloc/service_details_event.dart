part of 'service_details_bloc.u.dart';

@freezed
class ServiceDetailsEvent with _$ServiceDetailsEvent {
  const factory ServiceDetailsEvent.started() = _Started;
}
