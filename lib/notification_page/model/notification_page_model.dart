import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_page_model.freezed.dart';

@freezed
class NotificationPageModel with _$NotificationPageModel {
  const factory NotificationPageModel({
    required String title,
    required String body,
    required DateTime time,
  }) = _NotificationPageModel;
}
