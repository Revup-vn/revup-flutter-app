part of 'order_service_bloc.u.dart';

@freezed
class OrderServiceState with _$OrderServiceState {
  const factory OrderServiceState.initial() = _Initial;
  const factory OrderServiceState.loading() = _Loading;
  const factory OrderServiceState.failure() = _Failure;
  const factory OrderServiceState.loadDataSuccess({
    required IList<ServiceModel> services,
    required int totalPrice,
    required bool ready,
  }) = _LoadDataSuccess;
}
