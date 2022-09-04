part of 'confirm_service_bloc.dart';

@freezed
class ConfirmServiceEvent with _$ConfirmServiceEvent {
  const factory ConfirmServiceEvent.detailRequestAccepted({
    required String recordId,
    required List<OptionalService> optionalService,
  }) = _DetailRequestAccepted;
  const factory ConfirmServiceEvent.selectProductCompleted({
    required Function0<void> onRoute,
    required List<ServiceData> saveLst,
    required String recordId,
  }) = _SelectProductCompleted;
}
