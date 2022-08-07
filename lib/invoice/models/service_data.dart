import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_data.freezed.dart';

@freezed
class ServiceData with _$ServiceData {
  factory ServiceData({
    required String serviceName,
    required int serviceFee,
  }) = _ServiceData;
  factory ServiceData.fromDtos(
    String serviceName,
    int serviceFee,
  ) =>
      ServiceData(
        serviceName: serviceName,
        serviceFee: serviceFee,
      );
}
