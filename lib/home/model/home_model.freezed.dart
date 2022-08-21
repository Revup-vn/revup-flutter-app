// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeModel {
  String get providerName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get serviceType => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res>;
  $Res call(
      {String providerName,
      String imageUrl,
      int serviceType,
      int rating,
      DateTime created});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res> implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  final HomeModel _value;
  // ignore: unused_field
  final $Res Function(HomeModel) _then;

  @override
  $Res call({
    Object? providerName = freezed,
    Object? imageUrl = freezed,
    Object? serviceType = freezed,
    Object? rating = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      providerName: providerName == freezed
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String providerName,
      String imageUrl,
      int serviceType,
      int rating,
      DateTime created});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res> extends _$HomeModelCopyWithImpl<$Res>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, (v) => _then(v as _$_HomeModel));

  @override
  _$_HomeModel get _value => super._value as _$_HomeModel;

  @override
  $Res call({
    Object? providerName = freezed,
    Object? imageUrl = freezed,
    Object? serviceType = freezed,
    Object? rating = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_HomeModel(
      providerName: providerName == freezed
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_HomeModel implements _HomeModel {
  _$_HomeModel(
      {required this.providerName,
      required this.imageUrl,
      required this.serviceType,
      required this.rating,
      required this.created});

  @override
  final String providerName;
  @override
  final String imageUrl;
  @override
  final int serviceType;
  @override
  final int rating;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'HomeModel(providerName: $providerName, imageUrl: $imageUrl, serviceType: $serviceType, rating: $rating, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            const DeepCollectionEquality()
                .equals(other.providerName, providerName) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(providerName),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(serviceType),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);
}

abstract class _HomeModel implements HomeModel {
  factory _HomeModel(
      {required final String providerName,
      required final String imageUrl,
      required final int serviceType,
      required final int rating,
      required final DateTime created}) = _$_HomeModel;

  @override
  String get providerName;
  @override
  String get imageUrl;
  @override
  int get serviceType;
  @override
  int get rating;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
