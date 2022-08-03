import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'history_consumer_model.freezed.dart';

@freezed
class HistoryConsumerModel with _$HistoryConsumerModel {
  const factory HistoryConsumerModel({
    required bool isComplete,
    required String orderNumber,
    required String vehicleType,
    required String serviceName,
    required DateTime serviceStartBooking,
    required String orderStatusNotification,
    required AppUser user,
  }) = _HistoryConsumerModel;
}
