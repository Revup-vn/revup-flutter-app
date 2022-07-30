// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'overview_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OverviewOrderModel {
  String? get providerID => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  String? get repairRequestID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewOrderModelCopyWith<OverviewOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewOrderModelCopyWith<$Res> {
  factory $OverviewOrderModelCopyWith(
          OverviewOrderModel value, $Res Function(OverviewOrderModel) then) =
      _$OverviewOrderModelCopyWithImpl<$Res>;
  $Res call({String? providerID, String? distance, String? repairRequestID});
}

/// @nodoc
class _$OverviewOrderModelCopyWithImpl<$Res>
    implements $OverviewOrderModelCopyWith<$Res> {
  _$OverviewOrderModelCopyWithImpl(this._value, this._then);

  final OverviewOrderModel _value;
  // ignore: unused_field
  final $Res Function(OverviewOrderModel) _then;

  @override
  $Res call({
    Object? providerID = freezed,
    Object? distance = freezed,
    Object? repairRequestID = freezed,
  }) {
    return _then(_value.copyWith(
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      repairRequestID: repairRequestID == freezed
          ? _value.repairRequestID
          : repairRequestID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OverviewOrderModelCopyWith<$Res>
    implements $OverviewOrderModelCopyWith<$Res> {
  factory _$$_OverviewOrderModelCopyWith(_$_OverviewOrderModel value,
          $Res Function(_$_OverviewOrderModel) then) =
      __$$_OverviewOrderModelCopyWithImpl<$Res>;
  @override
  $Res call({String? providerID, String? distance, String? repairRequestID});
}

/// @nodoc
class __$$_OverviewOrderModelCopyWithImpl<$Res>
    extends _$OverviewOrderModelCopyWithImpl<$Res>
    implements _$$_OverviewOrderModelCopyWith<$Res> {
  __$$_OverviewOrderModelCopyWithImpl(
      _$_OverviewOrderModel _value, $Res Function(_$_OverviewOrderModel) _then)
      : super(_value, (v) => _then(v as _$_OverviewOrderModel));

  @override
  _$_OverviewOrderModel get _value => super._value as _$_OverviewOrderModel;

  @override
  $Res call({
    Object? providerID = freezed,
    Object? distance = freezed,
    Object? repairRequestID = freezed,
  }) {
    return _then(_$_OverviewOrderModel(
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      repairRequestID: repairRequestID == freezed
          ? _value.repairRequestID
          : repairRequestID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OverviewOrderModel implements _OverviewOrderModel {
  _$_OverviewOrderModel({this.providerID, this.distance, this.repairRequestID});

  @override
  final String? providerID;
  @override
  final String? distance;
  @override
  final String? repairRequestID;

  @override
  String toString() {
    return 'OverviewOrderModel(providerID: $providerID, distance: $distance, repairRequestID: $repairRequestID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverviewOrderModel &&
            const DeepCollectionEquality()
                .equals(other.providerID, providerID) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality()
                .equals(other.repairRequestID, repairRequestID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(providerID),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(repairRequestID));

  @JsonKey(ignore: true)
  @override
  _$$_OverviewOrderModelCopyWith<_$_OverviewOrderModel> get copyWith =>
      __$$_OverviewOrderModelCopyWithImpl<_$_OverviewOrderModel>(
          this, _$identity);
}

abstract class _OverviewOrderModel implements OverviewOrderModel {
  factory _OverviewOrderModel(
      {final String? providerID,
      final String? distance,
      final String? repairRequestID}) = _$_OverviewOrderModel;

  @override
  String? get providerID;
  @override
  String? get distance;
  @override
  String? get repairRequestID;
  @override
  @JsonKey(ignore: true)
  _$$_OverviewOrderModelCopyWith<_$_OverviewOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
