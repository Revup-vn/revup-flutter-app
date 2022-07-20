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
          feedbackID: $checkedConvert('feedback_i_d',
              (v) => v == null ? null : BigInt.parse(v as String)),
          userID: $checkedConvert(
              'user_i_d', (v) => v == null ? null : BigInt.parse(v as String)),
          rating: $checkedConvert('rating', (v) => (v as num?)?.toDouble()),
          description: $checkedConvert('description', (v) => v as String?),
          createdTime: $checkedConvert('created_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'feedbackID': 'feedback_i_d',
        'userID': 'user_i_d',
        'createdTime': 'created_time'
      },
    );

Map<String, dynamic> _$$_RatingDataToJson(_$_RatingData instance) =>
    <String, dynamic>{
      'feedback_i_d': instance.feedbackID?.toString(),
      'user_i_d': instance.userID?.toString(),
      'rating': instance.rating,
      'description': instance.description,
      'created_time': instance.createdTime?.toIso8601String(),
    };
