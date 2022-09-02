// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_raw_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProviderRawData _$$_ProviderRawDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ProviderRawData',
      json,
      ($checkedConvert) {
        final val = _$_ProviderRawData(
          uuid: $checkedConvert('uuid', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String),
          lastName: $checkedConvert('last_name', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          addr: $checkedConvert('addr', (v) => v as String),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
          backgroundUrl: $checkedConvert('background_url', (v) => v as String),
          bio: $checkedConvert('bio', (v) => v as String),
          curLocation: $checkedConvert(
              'cur_location',
              (v) => const GeoPointConverter()
                  .fromJson(v as Map<String, dynamic>)),
          loc: $checkedConvert(
              'loc', (v) => Location.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'avatarUrl': 'avatar_url',
        'backgroundUrl': 'background_url',
        'curLocation': 'cur_location'
      },
    );

Map<String, dynamic> _$$_ProviderRawDataToJson(_$_ProviderRawData instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'addr': instance.addr,
      'avatar_url': instance.avatarUrl,
      'background_url': instance.backgroundUrl,
      'bio': instance.bio,
      'cur_location': const GeoPointConverter().toJson(instance.curLocation),
      'loc': instance.loc.toJson(),
    };
