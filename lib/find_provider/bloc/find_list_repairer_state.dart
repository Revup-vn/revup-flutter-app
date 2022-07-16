part of 'find_list_repairer_bloc.dart';

@freezed
class FindListRepairerState with _$FindListRepairerState {
  const factory FindListRepairerState.initial({required bool hasValue}) =
      _Initial;
  const factory FindListRepairerState.refreshCompleted({
    required List<List<String>> listItems,
  }) = _Reload;

  const factory FindListRepairerState.valueChanged({
    required String value,
  }) = _ValueChanged;

  const factory FindListRepairerState.pickARepairer() = _PickARepairer;
}
