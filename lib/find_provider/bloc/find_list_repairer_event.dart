part of 'find_list_repairer_bloc.dart';

@freezed
class FindListRepairerEvent with _$FindListRepairerEvent {
  const factory FindListRepairerEvent.started({required bool hasValue}) =
      Started;
  const factory FindListRepairerEvent.refresh() = Refresh;
  const factory FindListRepairerEvent.onChanged({required String value}) =
      OnChanged;
  const factory FindListRepairerEvent.onTap() = OnTap;
}
