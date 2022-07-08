// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_password_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initial _$$_InitialFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Initial',
      json,
      ($checkedConvert) {
        final val = _$_Initial(
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'phoneNumber': 'phone_number',
        r'$type': 'runtimeType'
      },
    );

Map<String, dynamic> _$$_InitialToJson(_$_Initial instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'runtimeType': instance.$type,
    };

_$_Failure _$$_FailureFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Failure',
      json,
      ($checkedConvert) {
        final val = _$_Failure(
          errorMessage: $checkedConvert('error_message', (v) => v as String),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'errorMessage': 'error_message',
        'phoneNumber': 'phone_number',
        r'$type': 'runtimeType'
      },
    );

Map<String, dynamic> _$$_FailureToJson(_$_Failure instance) =>
    <String, dynamic>{
      'error_message': instance.errorMessage,
      'phone_number': instance.phoneNumber,
      'runtimeType': instance.$type,
    };
