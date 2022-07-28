import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider_data.u.freezed.dart';

@freezed
class ProviderData with _$ProviderData {
  factory ProviderData({
    String? id,
    String? fullName,
    String? address,
    String? avatar,
    num? distance,
    num? timeArrivalInMinute,
    double? numberStarRating,
    int? totalRating,
    String? backgroundImg,
    String? profileBio,
  }) = _ProviderData;
}
