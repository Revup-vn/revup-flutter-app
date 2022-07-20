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
          id: $checkedConvert(
              'id', (v) => v == null ? null : BigInt.parse(v as String)),
          providerID: $checkedConvert('provider_i_d',
              (v) => v == null ? null : BigInt.parse(v as String)),
          name: $checkedConvert('name', (v) => v as String?),
          serviceFee:
              $checkedConvert('service_fee', (v) => (v as num?)?.toDouble()),
          imageURL: $checkedConvert('image_u_r_l', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'providerID': 'provider_i_d',
        'serviceFee': 'service_fee',
        'imageURL': 'image_u_r_l'
      },
    );

Map<String, dynamic> _$$_ServiceDataToJson(_$_ServiceData instance) =>
    <String, dynamic>{
      'id': instance.id?.toString(),
      'provider_i_d': instance.providerID?.toString(),
      'name': instance.name,
      'service_fee': instance.serviceFee,
      'image_u_r_l': instance.imageURL,
    };
