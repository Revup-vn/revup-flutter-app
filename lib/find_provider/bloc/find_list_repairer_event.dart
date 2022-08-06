part of 'find_list_repairer_bloc.dart';

@freezed
class FindListRepairerEvent with _$FindListRepairerEvent {
  const factory FindListRepairerEvent.started() = _Started;
  const factory FindListRepairerEvent.dropdownListChanged({
    required RepairerSortType sortType,
  }) = DropdownListChanged;
}
