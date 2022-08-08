part of 'order_service_bloc.u.dart';

@freezed
class OrderServiceEvent with _$OrderServiceEvent {
  const factory OrderServiceEvent.started() = _Started;
  const factory OrderServiceEvent.addNewService({
    required IList<ServiceModel> currentServiceModel,
    required IList<PaymentService> newlyAddedServiceModel,
  }) = _AddNewService;
  const factory OrderServiceEvent.sumbit({
    required IList<PaymentService> serviceModel,
  }) = _Submit;
}
