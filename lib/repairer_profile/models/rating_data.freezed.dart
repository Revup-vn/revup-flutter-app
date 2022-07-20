// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rating_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingData _$RatingDataFromJson(Map<String, dynamic> json) {
  return _RatingData.fromJson(json);
}

/// @nodoc
mixin _$RatingData {
  BigInt? get feedbackID => throw _privateConstructorUsedError;
  BigInt? get userID => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDataCopyWith<RatingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDataCopyWith<$Res> {
  factory $RatingDataCopyWith(
          RatingData value, $Res Function(RatingData) then) =
      _$RatingDataCopyWithImpl<$Res>;
  $Res call(
      {BigInt? feedbackID,
      BigInt? userID,
      double? rating,
      String? description,
      DateTime? createdTime});
}

/// @nodoc
class _$RatingDataCopyWithImpl<$Res> implements $RatingDataCopyWith<$Res> {
  _$RatingDataCopyWithImpl(this._value, this._then);

  final RatingData _value;
  // ignore: unused_field
  final $Res Function(RatingData) _then;

  @override
  $Res call({
    Object? feedbackID = freezed,
    Object? userID = freezed,
    Object? rating = freezed,
    Object? description = freezed,
    Object? createdTime = freezed,
  }) {
    return _then(_value.copyWith(
      feedbackID: feedbackID == freezed
          ? _value.feedbackID
          : feedbackID // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_RatingDataCopyWith<$Res>
    implements $RatingDataCopyWith<$Res> {
  factory _$$_RatingDataCopyWith(
          _$_RatingData value, $Res Function(_$_RatingData) then) =
      __$$_RatingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {BigInt? feedbackID,
      BigInt? userID,
      double? rating,
      String? description,
      DateTime? createdTime});
}

/// @nodoc
class __$$_RatingDataCopyWithImpl<$Res> extends _$RatingDataCopyWithImpl<$Res>
    implements _$$_RatingDataCopyWith<$Res> {
  __$$_RatingDataCopyWithImpl(
      _$_RatingData _value, $Res Function(_$_RatingData) _then)
      : super(_value, (v) => _then(v as _$_RatingData));

  @override
  _$_RatingData get _value => super._value as _$_RatingData;

  @override
  $Res call({
    Object? feedbackID = freezed,
    Object? userID = freezed,
    Object? rating = freezed,
    Object? description = freezed,
    Object? createdTime = freezed,
  }) {
    return _then(_$_RatingData(
      feedbackID: feedbackID == freezed
          ? _value.feedbackID
          : feedbackID // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: createdTime == freezed
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingData implements _RatingData {
  _$_RatingData(
      {this.feedbackID,
      this.userID,
      this.rating,
      this.description,
      this.createdTime});

  factory _$_RatingData.fromJson(Map<String, dynamic> json) =>
      _$$_RatingDataFromJson(json);

  @override
  final BigInt? feedbackID;
  @override
  final BigInt? userID;
  @override
  final double? rating;
  @override
  final String? description;
  @override
  final DateTime? createdTime;

  @override
  String toString() {
    return 'RatingData(feedbackID: $feedbackID, userID: $userID, rating: $rating, description: $description, createdTime: $createdTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingData &&
            const DeepCollectionEquality()
                .equals(other.feedbackID, feedbackID) &&
            const DeepCollectionEquality().equals(other.userID, userID) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.createdTime, createdTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feedbackID),
      const DeepCollectionEquality().hash(userID),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(createdTime));

  @JsonKey(ignore: true)
  @override
  _$$_RatingDataCopyWith<_$_RatingData> get copyWith =>
      __$$_RatingDataCopyWithImpl<_$_RatingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingDataToJson(this);
  }
}

abstract class _RatingData implements RatingData {
  factory _RatingData(
      {final BigInt? feedbackID,
      final BigInt? userID,
      final double? rating,
      final String? description,
      final DateTime? createdTime}) = _$_RatingData;

  factory _RatingData.fromJson(Map<String, dynamic> json) =
      _$_RatingData.fromJson;

  @override
  BigInt? get feedbackID;
  @override
  BigInt? get userID;
  @override
  double? get rating;
  @override
  String? get description;
  @override
  DateTime? get createdTime;
  @override
  @JsonKey(ignore: true)
  _$$_RatingDataCopyWith<_$_RatingData> get copyWith =>
      throw _privateConstructorUsedError;
}
