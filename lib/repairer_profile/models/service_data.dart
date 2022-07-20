import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_data.freezed.dart';
part 'service_data.g.dart';

@freezed
class ServiceData with _$ServiceData {
  factory ServiceData({
    BigInt? id,
    BigInt? providerID,
    String? name,
    double? serviceFee,
    String? imageURL,
  }) = _ServiceData;

  factory ServiceData.fromJson(Map<String, dynamic> json) =>
      _$ServiceDataFromJson(json);
}
