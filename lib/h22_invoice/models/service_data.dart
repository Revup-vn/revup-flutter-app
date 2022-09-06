import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'service_data.freezed.dart';

@freezed
class ServiceData with _$ServiceData {
  factory ServiceData({
    required String serviceName,
    required int serviceFee,
    required String state,
    required bool isCompleted,
    required List<PaymentProduct> products,
    String? imgUrl,
  }) = _ServiceData;
  factory ServiceData.fromDtos(
    String serviceName,
    int serviceFee,
    String state,
    String? imgUrl, {
    required bool isCompleted,
    required List<PaymentProduct> products,
  }) =>
      ServiceData(
        serviceName: serviceName,
        serviceFee: serviceFee,
        state: state,
        isCompleted: isCompleted,
        imgUrl: imgUrl,
        products: products,
      );
}
