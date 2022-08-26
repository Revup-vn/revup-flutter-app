part of 'dropdown_list_bloc.dart';

@freezed
class DropdownListState with _$DropdownListState {
  const factory DropdownListState.initial() = _Initial;
  const factory DropdownListState.success({required ReportCategory value}) =
      _Success;
}
