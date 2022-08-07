import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_data.freezed.dart';

@freezed
class MessageData with _$MessageData {
  const factory MessageData(String? image, String? desc) = _MessageData;
}
