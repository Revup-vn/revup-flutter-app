import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'report_model.freezed.dart';

@freezed
class ReportModel with _$ReportModel {
  factory ReportModel({
    required String from,
    required String to,
    required AppUser provider,
    required String orderID,
    required ReportCategory cate,
    required int status,
    required String pid,
    required DateTime created,
    required DateTime end,
    required String desc,
    required String aid,
  }) = _ReportModel;
}
