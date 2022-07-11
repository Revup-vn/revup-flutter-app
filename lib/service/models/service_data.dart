import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_data.dart';
part 'service_data.freezed.dart';

@freezed
class ServiceData with _$ServiceData {
  const factory ServiceData({
    String? id,
    String? name,
    String? categoryId,
    String? providerId,
    num? serviceFee,
    String? imageUrl,
    List<ProductData>? products,
  }) = _ServiceData;
}
