// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProviderData _$$_ProviderDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ProviderData',
      json,
      ($checkedConvert) {
        final val = _$_ProviderData(
          id: $checkedConvert('id', (v) => v as String?),
          fullName: $checkedConvert('full_name', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          avatar: $checkedConvert('avatar', (v) => v as String?),
          distance: $checkedConvert('distance', (v) => v as num?),
          timeArrivalInMinute:
              $checkedConvert('time_arrival_in_minute', (v) => v as num?),
          numberStarRating: $checkedConvert(
              'number_star_rating', (v) => (v as num?)?.toDouble()),
          totalRating: $checkedConvert('total_rating', (v) => v as int?),
          backgroundImg: $checkedConvert('background_img', (v) => v as String?),
          profileBio: $checkedConvert('profile_bio', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'timeArrivalInMinute': 'time_arrival_in_minute',
        'numberStarRating': 'number_star_rating',
        'totalRating': 'total_rating',
        'backgroundImg': 'background_img',
        'profileBio': 'profile_bio'
      },
    );

Map<String, dynamic> _$$_ProviderDataToJson(_$_ProviderData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'address': instance.address,
      'avatar': instance.avatar,
      'distance': instance.distance,
      'time_arrival_in_minute': instance.timeArrivalInMinute,
      'number_star_rating': instance.numberStarRating,
      'total_rating': instance.totalRating,
      'background_img': instance.backgroundImg,
      'profile_bio': instance.profileBio,
    };
