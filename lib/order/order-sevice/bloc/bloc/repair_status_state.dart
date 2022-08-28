part of 'repair_status_bloc.dart';

@freezed
class RepairStatusState with _$RepairStatusState {
  const factory RepairStatusState.initial() = _Initial;
  const factory RepairStatusState.loading() = _Loading;
  const factory RepairStatusState.failure() = _Failure;
  const factory RepairStatusState.success({
    required List<Tuple2<String, int>> service,
    required int total,
  }) = _Success;
}
