import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_data.u.freezed.dart';

@freezed
class ServiceData with _$ServiceData {
  factory ServiceData({
    String? name,
    int? serviceFee,
    String? imageURL,
  }) = _ServiceData;
}
