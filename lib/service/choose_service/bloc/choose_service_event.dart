part of 'choose_service_bloc.u.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.started() = _Started;
  const factory ChooseServiceEvent.serviceListSubmitted({
    required Function0<void> onRoute,
    required Function2<String, String, void> sendMessage,
    required List<ServiceData> saveLst,
  }) = _ServiceListSubmitted;
  const factory ChooseServiceEvent.newServiceRequested(
    OptionalService optionalService,
  ) = _NewServiceRequested;
  const factory ChooseServiceEvent.detailRequestAccepted({
    required String recordId,
  }) = _DetailRequestAccepted;
}
