// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceData _$ServiceDataFromJson(Map<String, dynamic> json) {
  return _ServiceData.fromJson(json);
}

/// @nodoc
mixin _$ServiceData {
  BigInt? get id => throw _privateConstructorUsedError;
  BigInt? get providerID => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get serviceFee => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDataCopyWith<ServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDataCopyWith<$Res> {
  factory $ServiceDataCopyWith(
          ServiceData value, $Res Function(ServiceData) then) =
      _$ServiceDataCopyWithImpl<$Res>;
  $Res call(
      {BigInt? id,
      BigInt? providerID,
      String? name,
      double? serviceFee,
      String? imageURL});
}

/// @nodoc
class _$ServiceDataCopyWithImpl<$Res> implements $ServiceDataCopyWith<$Res> {
  _$ServiceDataCopyWithImpl(this._value, this._then);

  final ServiceData _value;
  // ignore: unused_field
  final $Res Function(ServiceData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? providerID = freezed,
    Object? name = freezed,
    Object? serviceFee = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFee: serviceFee == freezed
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ServiceDataCopyWith<$Res>
    implements $ServiceDataCopyWith<$Res> {
  factory _$$_ServiceDataCopyWith(
          _$_ServiceData value, $Res Function(_$_ServiceData) then) =
      __$$_ServiceDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {BigInt? id,
      BigInt? providerID,
      String? name,
      double? serviceFee,
      String? imageURL});
}

/// @nodoc
class __$$_ServiceDataCopyWithImpl<$Res> extends _$ServiceDataCopyWithImpl<$Res>
    implements _$$_ServiceDataCopyWith<$Res> {
  __$$_ServiceDataCopyWithImpl(
      _$_ServiceData _value, $Res Function(_$_ServiceData) _then)
      : super(_value, (v) => _then(v as _$_ServiceData));

  @override
  _$_ServiceData get _value => super._value as _$_ServiceData;

  @override
  $Res call({
    Object? id = freezed,
    Object? providerID = freezed,
    Object? name = freezed,
    Object? serviceFee = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_$_ServiceData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFee: serviceFee == freezed
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double?,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceData implements _ServiceData {
  _$_ServiceData(
      {this.id, this.providerID, this.name, this.serviceFee, this.imageURL});

  factory _$_ServiceData.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceDataFromJson(json);

  @override
  final BigInt? id;
  @override
  final BigInt? providerID;
  @override
  final String? name;
  @override
  final double? serviceFee;
  @override
  final String? imageURL;

  @override
  String toString() {
    return 'ServiceData(id: $id, providerID: $providerID, name: $name, serviceFee: $serviceFee, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.providerID, providerID) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.serviceFee, serviceFee) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(providerID),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(serviceFee),
      const DeepCollectionEquality().hash(imageURL));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceDataCopyWith<_$_ServiceData> get copyWith =>
      __$$_ServiceDataCopyWithImpl<_$_ServiceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceDataToJson(this);
  }
}

abstract class _ServiceData implements ServiceData {
  factory _ServiceData(
      {final BigInt? id,
      final BigInt? providerID,
      final String? name,
      final double? serviceFee,
      final String? imageURL}) = _$_ServiceData;

  factory _ServiceData.fromJson(Map<String, dynamic> json) =
      _$_ServiceData.fromJson;

  @override
  BigInt? get id;
  @override
  BigInt? get providerID;
  @override
  String? get name;
  @override
  double? get serviceFee;
  @override
  String? get imageURL;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceDataCopyWith<_$_ServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}
