part of 'review_repairman_bloc.u.dart';

@freezed
class ReviewRepairmanState with _$ReviewRepairmanState {
  const factory ReviewRepairmanState.initial() = _Initial;
  const factory ReviewRepairmanState.ready({required int rating}) = _Ready;
}
