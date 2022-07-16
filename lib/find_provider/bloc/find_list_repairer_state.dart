part of 'find_list_repairer_bloc.dart';

@freezed
class FindListRepairerState with _$FindListRepairerState {
  const factory FindListRepairerState.initial() = _Initial;
  const factory FindListRepairerState.reload({
    required List<List<String>> listItems,
  }) = _Reload;
}
