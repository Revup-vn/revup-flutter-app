import 'package:freezed_annotation/freezed_annotation.dart';
part 'service_request_data.freezed.dart';

@freezed
class ServiceRequestData with _$ServiceRequestData {
  const factory ServiceRequestData({
    String? name,
    String? description,
    List<String>? imageAttachments,
  }) = _ServiceRequestData;
}
