part of 'review_repairman_bloc.u.dart';

@freezed
class ReviewRepairmanState with _$ReviewRepairmanState {
  const factory ReviewRepairmanState.initial() = _Initial;
  const factory ReviewRepairmanState.loading() = _Loading;
  const factory ReviewRepairmanState.failure() = _Failure;
  const factory ReviewRepairmanState.success() = _Success;
  const factory ReviewRepairmanState.loadDataSuccess({
    required ProviderData data,
  }) = _LoadDataSuccess;
}
