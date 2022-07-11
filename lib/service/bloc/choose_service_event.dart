part of 'choose_service_bloc.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.serviceListSubmitted({
    required ServiceData serviceData,
  }) = ServiceListSubmitted;
  const factory ChooseServiceEvent.newServiceRequested() = NewServiceRequested;
}
