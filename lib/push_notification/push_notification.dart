import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification.freezed.dart';

@freezed
class PushNotification with _$PushNotification {
  const factory PushNotification({
    required String title,
    required String body,
  }) = _PushNotification;
}
