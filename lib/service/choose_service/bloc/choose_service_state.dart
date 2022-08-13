part of 'choose_service_bloc.u.dart';

@freezed
class ChooseServiceState with _$ChooseServiceState {
  const factory ChooseServiceState.initial() = _Initial;
  const factory ChooseServiceState.loading() = _Loading;
  const factory ChooseServiceState.failure() = _Failure;
  const factory ChooseServiceState.success({
    required String providerId,
    required IList<ServiceData> serviceData,
    required List<Tuple2<RepairCategory, IList<ServiceData>>> categories,
  }) = _Success;
  const factory ChooseServiceState.orderModify({
    required String providerId,
    required IList<ServiceData> serviceData,
    required List<Tuple2<RepairCategory, IList<ServiceData>>> categories,
  }) = _OrderModify;
  const factory ChooseServiceState.submitSuccess() = _SubmitSuccess;
}
