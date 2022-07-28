import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_data.u.freezed.dart';

@freezed
class RatingData with _$RatingData {
  factory RatingData({
    int? rating,
    String? description,
    DateTime? createdTime,
    DateTime? updatedTime,
    String? consumerName,
    String? imageUrl,
  }) = _RatingData;
}
