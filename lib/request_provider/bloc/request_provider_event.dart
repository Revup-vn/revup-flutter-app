part of 'request_provider_bloc.dart';

@freezed
class RequestProviderEvent with _$RequestProviderEvent {
  const factory RequestProviderEvent.started() = _Started;
}
