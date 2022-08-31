part of 'choose_service_bloc.u.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.started(
      {required List<OptionalService> newService}) = _Started;
  const factory ChooseServiceEvent.serviceListSubmitted({
    required Function0<void> onRoute,
    required Function2<String, String, void> sendMessage,
    required List<ServiceData> saveLst,
    required Function0<void> onPopBack,
  }) = _ServiceListSubmitted;
  const factory ChooseServiceEvent.selectProductCompleted({
    required Function0<void> onRoute,
    required List<ServiceData> saveLst,
    required String recordId,
  }) = _SelectProductCompleted;
  const factory ChooseServiceEvent.detailRequestAccepted({
    required String recordId,
  }) = _DetailRequestAccepted;
}
