part of 'choose_service_bloc.u.dart';

@freezed
class ChooseServiceState with _$ChooseServiceState {
  const factory ChooseServiceState.initial() = _Initial;
  const factory ChooseServiceState.loading() = _Loading;
  const factory ChooseServiceState.failure() = _Failure;
  const factory ChooseServiceState.submitted({required String recordId}) =
      _Submitted;
  const factory ChooseServiceState.success({
    required String providerId,
    required List<ServiceData> serviceList,
    required Tuple2<RepairCategory, IList<ServiceData>> catAndSv,
    required int movingFee,
  }) = _Success;
}
