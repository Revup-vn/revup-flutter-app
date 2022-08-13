// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductData {
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res>;
  $Res call({String name, int price, String description, String img});
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res> implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  final ProductData _value;
  // ignore: unused_field
  final $Res Function(ProductData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductDataCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$_ProductDataCopyWith(
          _$_ProductData value, $Res Function(_$_ProductData) then) =
      __$$_ProductDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, int price, String description, String img});
}

/// @nodoc
class __$$_ProductDataCopyWithImpl<$Res> extends _$ProductDataCopyWithImpl<$Res>
    implements _$$_ProductDataCopyWith<$Res> {
  __$$_ProductDataCopyWithImpl(
      _$_ProductData _value, $Res Function(_$_ProductData) _then)
      : super(_value, (v) => _then(v as _$_ProductData));

  @override
  _$_ProductData get _value => super._value as _$_ProductData;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? img = freezed,
  }) {
    return _then(_$_ProductData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductData implements _ProductData {
  const _$_ProductData(
      {required this.name,
      required this.price,
      required this.description,
      required this.img});

  @override
  final String name;
  @override
  final int price;
  @override
  final String description;
  @override
  final String img;

  @override
  String toString() {
    return 'ProductData(name: $name, price: $price, description: $description, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(img));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      __$$_ProductDataCopyWithImpl<_$_ProductData>(this, _$identity);
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {required final String name,
      required final int price,
      required final String description,
      required final String img}) = _$_ProductData;

  @override
  String get name;
  @override
  int get price;
  @override
  String get description;
  @override
  String get img;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}
