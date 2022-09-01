import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'provider_raw_data.freezed.dart';
part 'provider_raw_data.g.dart';

@freezed
class ProviderRawData with _$ProviderRawData {
  const factory ProviderRawData.def({
    required String uuid,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String phone,
    required String addr,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'background_url') required String backgroundUrl,
    required String bio,
    @JsonKey(name: 'cur_location')
    @GeoPointConverter()
        required GeoPoint curLocation,
    required Location loc,
    @Default(0) @JsonKey(ignore: true) double distance,
    @Default(0) @JsonKey(ignore: true) double timeArrivalInMinute,
    @Default(0) @JsonKey(ignore: true) double rating,
    @Default(0) @JsonKey(ignore: true) int ratingCount,
    @Default(<RepairService>[])
    @JsonKey(ignore: true)
        List<RepairService> repairService,
  }) = _ProviderRawData;

  factory ProviderRawData.fromJson(Map<String, dynamic> json) =>
      _$ProviderRawDataFromJson(json);
}

class GeoPointConverter
    implements JsonConverter<GeoPoint, Map<String, dynamic>> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Map<String, dynamic> geoPoint) {
    return geoPoint['geopoint'] as GeoPoint;
  }

  @override
  Map<String, dynamic> toJson(GeoPoint geoPoint) => <String, dynamic>{
        'latitude': geoPoint.latitude,
        'longitude': geoPoint.longitude
      };
}
