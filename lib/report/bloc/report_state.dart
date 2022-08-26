part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  const factory ReportState.loading() = _Loading;
  const factory ReportState.failure() = _Failure;
  const factory ReportState.success(
    List<ReportModel> models,
  ) = _Success;
}
