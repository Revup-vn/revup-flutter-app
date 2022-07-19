part of 'find_list_repairer_bloc.dart';

@freezed
class FindListRepairerState with _$FindListRepairerState {
  const factory FindListRepairerState.initial({required bool hasValue}) =
      _Initial;
  const factory FindListRepairerState.refreshSuccess({
    required List<List<String>> listProvider,
  }) = _RefreshSuccess;

  const factory FindListRepairerState.dropdownListChangedSuccess({
    required List<List<String>> listProvider,
    required String sortType,
  }) = _DropdownListChangedSuccess;
  const factory FindListRepairerState.loading() = _Loading;
}
