part of 'choose_service_bloc.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.started() = Started;
  const factory ChooseServiceEvent.serviceListSubmitted() =
      ServiceListSubmitted;
  const factory ChooseServiceEvent.newServiceRequested(
    ServiceData serviceData,
  ) = NewServiceRequested;
  const factory ChooseServiceEvent.serviceSelectChanged({
    required ServiceData serviceData,
    required bool isSelected,
  }) = ServiceSelectChanged;
}
