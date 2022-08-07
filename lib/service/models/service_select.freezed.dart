// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_select.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceSelect {
  String get name => throw _privateConstructorUsedError;
  int get serviceFee => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceSelectCopyWith<ServiceSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceSelectCopyWith<$Res> {
  factory $ServiceSelectCopyWith(
          ServiceSelect value, $Res Function(ServiceSelect) then) =
      _$ServiceSelectCopyWithImpl<$Res>;
  $Res call({String name, int serviceFee, String imageURL, bool isSelected});
}

/// @nodoc
class _$ServiceSelectCopyWithImpl<$Res>
    implements $ServiceSelectCopyWith<$Res> {
  _$ServiceSelectCopyWithImpl(this._value, this._then);

  final ServiceSelect _value;
  // ignore: unused_field
  final $Res Function(ServiceSelect) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? serviceFee = freezed,
    Object? imageURL = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceFee: serviceFee == freezed
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ServiceSelectCopyWith<$Res>
    implements $ServiceSelectCopyWith<$Res> {
  factory _$$_ServiceSelectCopyWith(
          _$_ServiceSelect value, $Res Function(_$_ServiceSelect) then) =
      __$$_ServiceSelectCopyWithImpl<$Res>;
  @override
  $Res call({String name, int serviceFee, String imageURL, bool isSelected});
}

/// @nodoc
class __$$_ServiceSelectCopyWithImpl<$Res>
    extends _$ServiceSelectCopyWithImpl<$Res>
    implements _$$_ServiceSelectCopyWith<$Res> {
  __$$_ServiceSelectCopyWithImpl(
      _$_ServiceSelect _value, $Res Function(_$_ServiceSelect) _then)
      : super(_value, (v) => _then(v as _$_ServiceSelect));

  @override
  _$_ServiceSelect get _value => super._value as _$_ServiceSelect;

  @override
  $Res call({
    Object? name = freezed,
    Object? serviceFee = freezed,
    Object? imageURL = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$_ServiceSelect(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceFee: serviceFee == freezed
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ServiceSelect implements _ServiceSelect {
  _$_ServiceSelect(
      {required this.name,
      required this.serviceFee,
      required this.imageURL,
      required this.isSelected});

  @override
  final String name;
  @override
  final int serviceFee;
  @override
  final String imageURL;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'ServiceSelect(name: $name, serviceFee: $serviceFee, imageURL: $imageURL, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceSelect &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.serviceFee, serviceFee) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(serviceFee),
      const DeepCollectionEquality().hash(imageURL),
      const DeepCollectionEquality().hash(isSelected));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceSelectCopyWith<_$_ServiceSelect> get copyWith =>
      __$$_ServiceSelectCopyWithImpl<_$_ServiceSelect>(this, _$identity);
}

abstract class _ServiceSelect implements ServiceSelect {
  factory _ServiceSelect(
      {required final String name,
      required final int serviceFee,
      required final String imageURL,
      required final bool isSelected}) = _$_ServiceSelect;

  @override
  String get name;
  @override
  int get serviceFee;
  @override
  String get imageURL;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceSelectCopyWith<_$_ServiceSelect> get copyWith =>
      throw _privateConstructorUsedError;
}
