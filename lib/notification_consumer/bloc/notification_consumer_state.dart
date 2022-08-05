part of 'notification_consumer_bloc.dart';

@freezed
class NotificationConsumerState with _$NotificationConsumerState {
  const factory NotificationConsumerState.initial() = _Initial;
  const factory NotificationConsumerState.loading() = _Loading;
  const factory NotificationConsumerState.failure() = _Failure;
  const factory NotificationConsumerState.success(
    List<NotificationConsumerModel> notifications,
  ) = _Success;
}
