// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingData _$$_RatingDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_RatingData',
      json,
      ($checkedConvert) {
        final val = _$_RatingData(
          rating: $checkedConvert('rating', (v) => v as int?),
          description: $checkedConvert('description', (v) => v as String?),
          createdTime: $checkedConvert('created_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedTime: $checkedConvert('updated_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
          consumerName: $checkedConvert('consumer_name', (v) => v as String?),
          imageUrl: $checkedConvert('image_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdTime': 'created_time',
        'updatedTime': 'updated_time',
        'consumerName': 'consumer_name',
        'imageUrl': 'image_url'
      },
    );

Map<String, dynamic> _$$_RatingDataToJson(_$_RatingData instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'description': instance.description,
      'created_time': instance.createdTime?.toIso8601String(),
      'updated_time': instance.updatedTime?.toIso8601String(),
      'consumer_name': instance.consumerName,
      'image_url': instance.imageUrl,
    };
