part of 'new_service_bloc.dart';

@freezed
class NewServiceEvent with _$NewServiceEvent {
  const factory NewServiceEvent.submitted({
    required Function0<void> onRoute,
    required OptionalService optionalService,
  }) = _Submitted;
}
