part of 'choose_service_bloc.u.dart';

@freezed
class ChooseServiceEvent with _$ChooseServiceEvent {
  const factory ChooseServiceEvent.started({
    required List<OptionalService> newService,
  }) = _Started;
  const factory ChooseServiceEvent.serviceListSubmitted({
    required Function1<String, void> onRouteToTimeOut,
    required Function2<String, String, void> sendMessage,
    required List<ServiceData> saveLst,
    required Function0<void> onPopBack,
    required Function4<int, String, String, String, void> pay,
  }) = _ServiceListSubmitted;
}
