// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneNumber {
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberCopyWith<PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberCopyWith<$Res> {
  factory $PhoneNumberCopyWith(
          PhoneNumber value, $Res Function(PhoneNumber) then) =
      _$PhoneNumberCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberCopyWithImpl<$Res> implements $PhoneNumberCopyWith<$Res> {
  _$PhoneNumberCopyWithImpl(this._value, this._then);

  final PhoneNumber _value;
  // ignore: unused_field
  final $Res Function(PhoneNumber) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PhoneNumberCopyWith<$Res>
    implements $PhoneNumberCopyWith<$Res> {
  factory _$$_PhoneNumberCopyWith(
          _$_PhoneNumber value, $Res Function(_$_PhoneNumber) then) =
      __$$_PhoneNumberCopyWithImpl<$Res>;
  @override
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_PhoneNumberCopyWithImpl<$Res> extends _$PhoneNumberCopyWithImpl<$Res>
    implements _$$_PhoneNumberCopyWith<$Res> {
  __$$_PhoneNumberCopyWithImpl(
      _$_PhoneNumber _value, $Res Function(_$_PhoneNumber) _then)
      : super(_value, (v) => _then(v as _$_PhoneNumber));

  @override
  _$_PhoneNumber get _value => super._value as _$_PhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_PhoneNumber(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumber implements _PhoneNumber {
  const _$_PhoneNumber({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      __$$_PhoneNumberCopyWithImpl<_$_PhoneNumber>(this, _$identity);
}

abstract class _PhoneNumber implements PhoneNumber {
  const factory _PhoneNumber({required final String phoneNumber}) =
      _$_PhoneNumber;

  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberCopyWith<_$_PhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}
