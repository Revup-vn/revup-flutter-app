import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_data.freezed.dart';
part 'rating_data.g.dart';

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

  factory RatingData.fromJson(Map<String, dynamic> json) =>
      _$RatingDataFromJson(json);
}
