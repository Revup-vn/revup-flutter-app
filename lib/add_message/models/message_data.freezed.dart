// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageData {
  File? get image => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageDataCopyWith<MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDataCopyWith<$Res> {
  factory $MessageDataCopyWith(
          MessageData value, $Res Function(MessageData) then) =
      _$MessageDataCopyWithImpl<$Res>;
  $Res call({File? image, String? desc});
}

/// @nodoc
class _$MessageDataCopyWithImpl<$Res> implements $MessageDataCopyWith<$Res> {
  _$MessageDataCopyWithImpl(this._value, this._then);

  final MessageData _value;
  // ignore: unused_field
  final $Res Function(MessageData) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MessageDataCopyWith<$Res>
    implements $MessageDataCopyWith<$Res> {
  factory _$$_MessageDataCopyWith(
          _$_MessageData value, $Res Function(_$_MessageData) then) =
      __$$_MessageDataCopyWithImpl<$Res>;
  @override
  $Res call({File? image, String? desc});
}

/// @nodoc
class __$$_MessageDataCopyWithImpl<$Res> extends _$MessageDataCopyWithImpl<$Res>
    implements _$$_MessageDataCopyWith<$Res> {
  __$$_MessageDataCopyWithImpl(
      _$_MessageData _value, $Res Function(_$_MessageData) _then)
      : super(_value, (v) => _then(v as _$_MessageData));

  @override
  _$_MessageData get _value => super._value as _$_MessageData;

  @override
  $Res call({
    Object? image = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$_MessageData(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MessageData implements _MessageData {
  const _$_MessageData(this.image, this.desc);

  @override
  final File? image;
  @override
  final String? desc;

  @override
  String toString() {
    return 'MessageData(image: $image, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageData &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.desc, desc));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(desc));

  @JsonKey(ignore: true)
  @override
  _$$_MessageDataCopyWith<_$_MessageData> get copyWith =>
      __$$_MessageDataCopyWithImpl<_$_MessageData>(this, _$identity);
}

abstract class _MessageData implements MessageData {
  const factory _MessageData(final File? image, final String? desc) =
      _$_MessageData;

  @override
  File? get image;
  @override
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDataCopyWith<_$_MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}
