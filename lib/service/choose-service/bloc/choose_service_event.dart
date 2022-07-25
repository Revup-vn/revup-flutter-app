part of 'choose_service_bloc.u.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.started() = Started;
  const factory ChooseServiceEvent.serviceListSubmitted() =
      ServiceListSubmitted;
  const factory ChooseServiceEvent.newServiceRequested(
    ServiceData serviceData,
  ) = NewServiceRequested;
  const factory ChooseServiceEvent.serviceSelected(ServiceData serviceData) =
      ServiceSelected;
  const factory ChooseServiceEvent.serviceUnselected(ServiceData serviceData) =
      ServiceUnselected;
}
