part of 'notification_page_bloc.dart';

@freezed
class NotificationPageState with _$NotificationPageState {
  const factory NotificationPageState.initial() = _Initial;
  const factory NotificationPageState.loading() = _Loading;
  const factory NotificationPageState.failure() = _Failure;
  const factory NotificationPageState.success(
    IList<NotificationPageModel> notifications,
  ) = _Success;
}
