import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'product_data.freezed.dart';

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    required String name,
    required int price,
    required String description,
    required String img,
  }) = _ProductData;

  factory ProductData.fromDtos(RepairProduct product) => ProductData(
        name: product.name,
        price: product.price,
        description: product.desc,
        img: product.img,
      );
}
