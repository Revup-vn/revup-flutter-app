part of 'choose_service_bloc.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.started() = _Started;
  const factory ChooseServiceEvent.serviceListSubmitted() =
      _ServiceListSubmitted;
  const factory ChooseServiceEvent.newServiceRequested(
    ServiceData serviceData,
  ) = _NewServiceRequested;
  const factory ChooseServiceEvent.serviceSelectChanged({
    required ServiceData serviceData,
    required bool isSelected,
  }) = _ServiceSelectChanged;
  const factory ChooseServiceEvent.detailRequestAccepted({
    required String recordId,
  }) = _DetailRequestAccepted;
}
