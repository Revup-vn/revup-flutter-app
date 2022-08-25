// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryItemModel {
  String get orderNumber => throw _privateConstructorUsedError;
  int get vehicleType => throw _privateConstructorUsedError;
  DateTime get timeCreated => throw _privateConstructorUsedError;
  int get orderStatus => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryItemModelCopyWith<HistoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryItemModelCopyWith<$Res> {
  factory $HistoryItemModelCopyWith(
          HistoryItemModel value, $Res Function(HistoryItemModel) then) =
      _$HistoryItemModelCopyWithImpl<$Res>;
  $Res call(
      {String orderNumber,
      int vehicleType,
      DateTime timeCreated,
      int orderStatus,
      String userName,
      String imgUrl});
}

/// @nodoc
class _$HistoryItemModelCopyWithImpl<$Res>
    implements $HistoryItemModelCopyWith<$Res> {
  _$HistoryItemModelCopyWithImpl(this._value, this._then);

  final HistoryItemModel _value;
  // ignore: unused_field
  final $Res Function(HistoryItemModel) _then;

  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? vehicleType = freezed,
    Object? timeCreated = freezed,
    Object? orderStatus = freezed,
    Object? userName = freezed,
    Object? imgUrl = freezed,
  }) {
    return _then(_value.copyWith(
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int,
      timeCreated: timeCreated == freezed
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HistoryItemModelCopyWith<$Res>
    implements $HistoryItemModelCopyWith<$Res> {
  factory _$$_HistoryItemModelCopyWith(
          _$_HistoryItemModel value, $Res Function(_$_HistoryItemModel) then) =
      __$$_HistoryItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String orderNumber,
      int vehicleType,
      DateTime timeCreated,
      int orderStatus,
      String userName,
      String imgUrl});
}

/// @nodoc
class __$$_HistoryItemModelCopyWithImpl<$Res>
    extends _$HistoryItemModelCopyWithImpl<$Res>
    implements _$$_HistoryItemModelCopyWith<$Res> {
  __$$_HistoryItemModelCopyWithImpl(
      _$_HistoryItemModel _value, $Res Function(_$_HistoryItemModel) _then)
      : super(_value, (v) => _then(v as _$_HistoryItemModel));

  @override
  _$_HistoryItemModel get _value => super._value as _$_HistoryItemModel;

  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? vehicleType = freezed,
    Object? timeCreated = freezed,
    Object? orderStatus = freezed,
    Object? userName = freezed,
    Object? imgUrl = freezed,
  }) {
    return _then(_$_HistoryItemModel(
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int,
      timeCreated: timeCreated == freezed
          ? _value.timeCreated
          : timeCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HistoryItemModel implements _HistoryItemModel {
  const _$_HistoryItemModel(
      {required this.orderNumber,
      required this.vehicleType,
      required this.timeCreated,
      required this.orderStatus,
      required this.userName,
      required this.imgUrl});

  @override
  final String orderNumber;
  @override
  final int vehicleType;
  @override
  final DateTime timeCreated;
  @override
  final int orderStatus;
  @override
  final String userName;
  @override
  final String imgUrl;

  @override
  String toString() {
    return 'HistoryItemModel(orderNumber: $orderNumber, vehicleType: $vehicleType, timeCreated: $timeCreated, orderStatus: $orderStatus, userName: $userName, imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryItemModel &&
            const DeepCollectionEquality()
                .equals(other.orderNumber, orderNumber) &&
            const DeepCollectionEquality()
                .equals(other.vehicleType, vehicleType) &&
            const DeepCollectionEquality()
                .equals(other.timeCreated, timeCreated) &&
            const DeepCollectionEquality()
                .equals(other.orderStatus, orderStatus) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.imgUrl, imgUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderNumber),
      const DeepCollectionEquality().hash(vehicleType),
      const DeepCollectionEquality().hash(timeCreated),
      const DeepCollectionEquality().hash(orderStatus),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(imgUrl));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryItemModelCopyWith<_$_HistoryItemModel> get copyWith =>
      __$$_HistoryItemModelCopyWithImpl<_$_HistoryItemModel>(this, _$identity);
}

abstract class _HistoryItemModel implements HistoryItemModel {
  const factory _HistoryItemModel(
      {required final String orderNumber,
      required final int vehicleType,
      required final DateTime timeCreated,
      required final int orderStatus,
      required final String userName,
      required final String imgUrl}) = _$_HistoryItemModel;

  @override
  String get orderNumber;
  @override
  int get vehicleType;
  @override
  DateTime get timeCreated;
  @override
  int get orderStatus;
  @override
  String get userName;
  @override
  String get imgUrl;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryItemModelCopyWith<_$_HistoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
