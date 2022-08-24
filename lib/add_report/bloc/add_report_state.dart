part of 'add_report_bloc.dart';

@freezed
class AddReportState with _$AddReportState {
  const factory AddReportState.initial() = _Initial;
  const factory AddReportState.failure() = _Failure;
  const factory AddReportState.loading() = _Loading;
  const factory AddReportState.success() = _Success;

}
