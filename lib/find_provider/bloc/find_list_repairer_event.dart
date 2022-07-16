part of 'find_list_repairer_bloc.dart';

@freezed
class FindListRepairerEvent with _$FindListRepairerEvent {
  const factory FindListRepairerEvent.started() = Started;
  const factory FindListRepairerEvent.refresh() = Refresh;
}
