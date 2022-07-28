// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceData _$$_ServiceDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ServiceData',
      json,
      ($checkedConvert) {
        final val = _$_ServiceData(
          name: $checkedConvert('name', (v) => v as String?),
          serviceFee: $checkedConvert('service_fee', (v) => v as int?),
          imageURL: $checkedConvert('image_u_r_l', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'serviceFee': 'service_fee',
        'imageURL': 'image_u_r_l'
      },
    );

Map<String, dynamic> _$$_ServiceDataToJson(_$_ServiceData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'service_fee': instance.serviceFee,
      'image_u_r_l': instance.imageURL,
    };
