part of 'select_prod_service_cubit.dart';

@freezed
class SelectProdServiceState with _$SelectProdServiceState {
  const factory SelectProdServiceState.initial() = _Initial;
  const factory SelectProdServiceState.failure() = _Failure;
  const factory SelectProdServiceState.success({
    required String providerId,
    required IList<ServiceData> serviceData,
    required List<PendingServiceModel> pendingService,
  }) = _Success;
}
