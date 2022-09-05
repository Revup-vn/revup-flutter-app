part of 'confirm_service_bloc.dart';

@freezed
class ConfirmServiceState with _$ConfirmServiceState {
  const factory ConfirmServiceState.initial() = _Initial;
  const factory ConfirmServiceState.failure() = _Failure;
  const factory ConfirmServiceState.orderModify({
    required String providerId,
    required IList<ServiceData> serviceData,
    required List<PendingServiceModel> pendingService,
    required Tuple2<RepairCategory, IList<ServiceData>> catAndSv,
  }) = _OrderModify;
}
