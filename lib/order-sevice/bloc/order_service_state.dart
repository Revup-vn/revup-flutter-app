part of 'order_service_bloc.dart';

@freezed
class OrderServiceState with _$OrderServiceState {
  const factory OrderServiceState.initial() = _Initial;
  const factory OrderServiceState.loading() = _Loading;
  const factory OrderServiceState.failure() = _Failure;
  const factory OrderServiceState.success(
    List<ServiceModel> services,
    int totalPrice,
  ) = _Success;
}
