part of 'add_report_bloc.dart';

@freezed
class AddReportEvent with _$AddReportEvent {
  const factory AddReportEvent.started() = _Started;
  const factory AddReportEvent.submited({
    required String recordID,
  }) = _Submited;
}
