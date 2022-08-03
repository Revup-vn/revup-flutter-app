part of 'notification_consumer_bloc.dart';

@freezed
class NotificationConsumerEvent with _$NotificationConsumerEvent {
  const factory NotificationConsumerEvent.started() = _Started;
}
