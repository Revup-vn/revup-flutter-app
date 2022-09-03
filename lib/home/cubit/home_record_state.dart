part of 'home_record_cubit.dart';

@freezed
class HomeRecordState with _$HomeRecordState {
  const factory HomeRecordState.enabled() = _Enabled;
  const factory HomeRecordState.disabled() = _Disabled;
}
