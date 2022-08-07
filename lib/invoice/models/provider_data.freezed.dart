// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'provider_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProviderData {
  String get providerID => throw _privateConstructorUsedError;
  String get providerName => throw _privateConstructorUsedError;
  String get providerUrlAvatar => throw _privateConstructorUsedError;
  String get providerAddress => throw _privateConstructorUsedError;
  double get ratingStar => throw _privateConstructorUsedError;
  int get totalStarRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProviderDataCopyWith<ProviderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderDataCopyWith<$Res> {
  factory $ProviderDataCopyWith(
          ProviderData value, $Res Function(ProviderData) then) =
      _$ProviderDataCopyWithImpl<$Res>;
  $Res call(
      {String providerID,
      String providerName,
      String providerUrlAvatar,
      String providerAddress,
      double ratingStar,
      int totalStarRating});
}

/// @nodoc
class _$ProviderDataCopyWithImpl<$Res> implements $ProviderDataCopyWith<$Res> {
  _$ProviderDataCopyWithImpl(this._value, this._then);

  final ProviderData _value;
  // ignore: unused_field
  final $Res Function(ProviderData) _then;

  @override
  $Res call({
    Object? providerID = freezed,
    Object? providerName = freezed,
    Object? providerUrlAvatar = freezed,
    Object? providerAddress = freezed,
    Object? ratingStar = freezed,
    Object? totalStarRating = freezed,
  }) {
    return _then(_value.copyWith(
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as String,
      providerName: providerName == freezed
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      providerUrlAvatar: providerUrlAvatar == freezed
          ? _value.providerUrlAvatar
          : providerUrlAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      providerAddress: providerAddress == freezed
          ? _value.providerAddress
          : providerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      ratingStar: ratingStar == freezed
          ? _value.ratingStar
          : ratingStar // ignore: cast_nullable_to_non_nullable
              as double,
      totalStarRating: totalStarRating == freezed
          ? _value.totalStarRating
          : totalStarRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ProviderDataCopyWith<$Res>
    implements $ProviderDataCopyWith<$Res> {
  factory _$$_ProviderDataCopyWith(
          _$_ProviderData value, $Res Function(_$_ProviderData) then) =
      __$$_ProviderDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String providerID,
      String providerName,
      String providerUrlAvatar,
      String providerAddress,
      double ratingStar,
      int totalStarRating});
}

/// @nodoc
class __$$_ProviderDataCopyWithImpl<$Res>
    extends _$ProviderDataCopyWithImpl<$Res>
    implements _$$_ProviderDataCopyWith<$Res> {
  __$$_ProviderDataCopyWithImpl(
      _$_ProviderData _value, $Res Function(_$_ProviderData) _then)
      : super(_value, (v) => _then(v as _$_ProviderData));

  @override
  _$_ProviderData get _value => super._value as _$_ProviderData;

  @override
  $Res call({
    Object? providerID = freezed,
    Object? providerName = freezed,
    Object? providerUrlAvatar = freezed,
    Object? providerAddress = freezed,
    Object? ratingStar = freezed,
    Object? totalStarRating = freezed,
  }) {
    return _then(_$_ProviderData(
      providerID: providerID == freezed
          ? _value.providerID
          : providerID // ignore: cast_nullable_to_non_nullable
              as String,
      providerName: providerName == freezed
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      providerUrlAvatar: providerUrlAvatar == freezed
          ? _value.providerUrlAvatar
          : providerUrlAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      providerAddress: providerAddress == freezed
          ? _value.providerAddress
          : providerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      ratingStar: ratingStar == freezed
          ? _value.ratingStar
          : ratingStar // ignore: cast_nullable_to_non_nullable
              as double,
      totalStarRating: totalStarRating == freezed
          ? _value.totalStarRating
          : totalStarRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProviderData implements _ProviderData {
  _$_ProviderData(
      {required this.providerID,
      required this.providerName,
      required this.providerUrlAvatar,
      required this.providerAddress,
      required this.ratingStar,
      required this.totalStarRating});

  @override
  final String providerID;
  @override
  final String providerName;
  @override
  final String providerUrlAvatar;
  @override
  final String providerAddress;
  @override
  final double ratingStar;
  @override
  final int totalStarRating;

  @override
  String toString() {
    return 'ProviderData(providerID: $providerID, providerName: $providerName, providerUrlAvatar: $providerUrlAvatar, providerAddress: $providerAddress, ratingStar: $ratingStar, totalStarRating: $totalStarRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProviderData &&
            const DeepCollectionEquality()
                .equals(other.providerID, providerID) &&
            const DeepCollectionEquality()
                .equals(other.providerName, providerName) &&
            const DeepCollectionEquality()
                .equals(other.providerUrlAvatar, providerUrlAvatar) &&
            const DeepCollectionEquality()
                .equals(other.providerAddress, providerAddress) &&
            const DeepCollectionEquality()
                .equals(other.ratingStar, ratingStar) &&
            const DeepCollectionEquality()
                .equals(other.totalStarRating, totalStarRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(providerID),
      const DeepCollectionEquality().hash(providerName),
      const DeepCollectionEquality().hash(providerUrlAvatar),
      const DeepCollectionEquality().hash(providerAddress),
      const DeepCollectionEquality().hash(ratingStar),
      const DeepCollectionEquality().hash(totalStarRating));

  @JsonKey(ignore: true)
  @override
  _$$_ProviderDataCopyWith<_$_ProviderData> get copyWith =>
      __$$_ProviderDataCopyWithImpl<_$_ProviderData>(this, _$identity);
}

abstract class _ProviderData implements ProviderData {
  factory _ProviderData(
      {required final String providerID,
      required final String providerName,
      required final String providerUrlAvatar,
      required final String providerAddress,
      required final double ratingStar,
      required final int totalStarRating}) = _$_ProviderData;

  @override
  String get providerID;
  @override
  String get providerName;
  @override
  String get providerUrlAvatar;
  @override
  String get providerAddress;
  @override
  double get ratingStar;
  @override
  int get totalStarRating;
  @override
  @JsonKey(ignore: true)
  _$$_ProviderDataCopyWith<_$_ProviderData> get copyWith =>
      throw _privateConstructorUsedError;
}
