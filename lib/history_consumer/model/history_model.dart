import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'history_model.freezed.dart';

@freezed
class HistoryModel with _$HistoryModel {
  const factory HistoryModel({
    required bool isComplete,
    required String vehicleType,
    required String toLocation,
    required DateTime completedTime,
    required AppUser provider,
    ReportFeedback? feedback,
    required IList<PaymentService> services,
  }) = _HistoryConsumerModel;

  factory HistoryModel.fromDtos(
    RepairRecord record,
    AppUser provider,
    IList<PaymentService> services,
  ) =>
      record.maybeMap(
        aborted: (v) => HistoryModel(
          isComplete: false,
          vehicleType: v.vehicle,
          toLocation: v.to.name,
          completedTime: v.created,
          provider: provider,
          services: ilist<PaymentService>([]),
        ),
        finished: (v) => HistoryModel(
          isComplete: true,
          vehicleType: v.vehicle,
          toLocation: v.to.name,
          completedTime: v.completed,
          provider: provider,
          feedback: v.feedback,
          services: services,
        ),
        orElse: throw NullThrownError(),
      );
}
