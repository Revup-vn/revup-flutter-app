// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_data.u.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProviderData _$$_ProviderDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ProviderData',
      json,
      ($checkedConvert) {
        final val = _$_ProviderData(
          id: $checkedConvert('id', (v) => v as String),
          fullName: $checkedConvert('full_name', (v) => v as String),
          address: $checkedConvert('address', (v) => v as String),
          avatar: $checkedConvert('avatar', (v) => v as String),
          distance: $checkedConvert('distance', (v) => (v as num).toDouble()),
          timeArrivalInMinute: $checkedConvert(
              'time_arrival_in_minute', (v) => (v as num).toDouble()),
          rating: $checkedConvert('rating', (v) => (v as num).toDouble()),
          ratingCount: $checkedConvert('rating_count', (v) => v as int),
          backgroundImg: $checkedConvert('background_img', (v) => v as String),
          profileBio: $checkedConvert('profile_bio', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'fullName': 'full_name',
        'timeArrivalInMinute': 'time_arrival_in_minute',
        'ratingCount': 'rating_count',
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
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
      'background_img': instance.backgroundImg,
      'profile_bio': instance.profileBio,
      'phone': instance.phone,
    };
