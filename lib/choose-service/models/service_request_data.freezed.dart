// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceRequestData {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get imageAttachments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceRequestDataCopyWith<ServiceRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestDataCopyWith<$Res> {
  factory $ServiceRequestDataCopyWith(
          ServiceRequestData value, $Res Function(ServiceRequestData) then) =
      _$ServiceRequestDataCopyWithImpl<$Res>;
  $Res call(
      {String? name, String? description, List<String>? imageAttachments});
}

/// @nodoc
class _$ServiceRequestDataCopyWithImpl<$Res>
    implements $ServiceRequestDataCopyWith<$Res> {
  _$ServiceRequestDataCopyWithImpl(this._value, this._then);

  final ServiceRequestData _value;
  // ignore: unused_field
  final $Res Function(ServiceRequestData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAttachments = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAttachments: imageAttachments == freezed
          ? _value.imageAttachments
          : imageAttachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ServiceRequestDataCopyWith<$Res>
    implements $ServiceRequestDataCopyWith<$Res> {
  factory _$$_ServiceRequestDataCopyWith(_$_ServiceRequestData value,
          $Res Function(_$_ServiceRequestData) then) =
      __$$_ServiceRequestDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name, String? description, List<String>? imageAttachments});
}

/// @nodoc
class __$$_ServiceRequestDataCopyWithImpl<$Res>
    extends _$ServiceRequestDataCopyWithImpl<$Res>
    implements _$$_ServiceRequestDataCopyWith<$Res> {
  __$$_ServiceRequestDataCopyWithImpl(
      _$_ServiceRequestData _value, $Res Function(_$_ServiceRequestData) _then)
      : super(_value, (v) => _then(v as _$_ServiceRequestData));

  @override
  _$_ServiceRequestData get _value => super._value as _$_ServiceRequestData;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAttachments = freezed,
  }) {
    return _then(_$_ServiceRequestData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageAttachments: imageAttachments == freezed
          ? _value._imageAttachments
          : imageAttachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_ServiceRequestData implements _ServiceRequestData {
  const _$_ServiceRequestData(
      {this.name, this.description, final List<String>? imageAttachments})
      : _imageAttachments = imageAttachments;

  @override
  final String? name;
  @override
  final String? description;
  final List<String>? _imageAttachments;
  @override
  List<String>? get imageAttachments {
    final value = _imageAttachments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServiceRequestData(name: $name, description: $description, imageAttachments: $imageAttachments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceRequestData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._imageAttachments, _imageAttachments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_imageAttachments));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceRequestDataCopyWith<_$_ServiceRequestData> get copyWith =>
      __$$_ServiceRequestDataCopyWithImpl<_$_ServiceRequestData>(
          this, _$identity);
}

abstract class _ServiceRequestData implements ServiceRequestData {
  const factory _ServiceRequestData(
      {final String? name,
      final String? description,
      final List<String>? imageAttachments}) = _$_ServiceRequestData;

  @override
  String? get name;
  @override
  String? get description;
  @override
  List<String>? get imageAttachments;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceRequestDataCopyWith<_$_ServiceRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}
