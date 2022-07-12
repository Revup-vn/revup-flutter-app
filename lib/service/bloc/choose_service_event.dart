part of 'choose_service_bloc.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.serviceListSubmitted() =
      ServiceListSubmitted;
  const factory ChooseServiceEvent.newServiceRequested() = NewServiceRequested;
  const factory ChooseServiceEvent.serviceSelected(String serviceId) =
      ServiceSelected;
  const factory ChooseServiceEvent.serviceUnselected(String serviceId) =
      ServiceUnselected;
}
