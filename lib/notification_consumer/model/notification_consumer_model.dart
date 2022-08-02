import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_consumer_model.freezed.dart';

@freezed
class NotificationConsumerModel with _$NotificationConsumerModel {
  const factory NotificationConsumerModel({
    required String orderStatusNotification,
    required String orderNumber,
    required DateTime serviceStartBooking,
  }) = _NotificationConsumerModel;
}
