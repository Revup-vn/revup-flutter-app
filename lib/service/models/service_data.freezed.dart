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

/// @nodoc
mixin _$ServiceData {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  num? get serviceFee => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get productPriceRange => throw _privateConstructorUsedError;
  List<ProductData>? get products => throw _privateConstructorUsedError;

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
      {String? id,
      String? name,
      String? categoryId,
      String? providerId,
      num? serviceFee,
      String? imageUrl,
      String? productPriceRange,
      List<ProductData>? products});
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
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? providerId = freezed,
    Object? serviceFee = freezed,
    Object? imageUrl = freezed,
    Object? productPriceRange = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFee: serviceFee == freezed
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as num?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      productPriceRange: productPriceRange == freezed
          ? _value.productPriceRange
          : productPriceRange // ignore: cast_nullable_to_non_nullable
              as String?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
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
      {String? id,
      String? name,
      String? categoryId,
      String? providerId,
      num? serviceFee,
      String? imageUrl,
      String? productPriceRange,
      List<ProductData>? products});
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
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? providerId = freezed,
    Object? serviceFee = freezed,
    Object? imageUrl = freezed,
    Object? productPriceRange = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_ServiceData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFee: serviceFee == freezed
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as num?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      productPriceRange: productPriceRange == freezed
          ? _value.productPriceRange
          : productPriceRange // ignore: cast_nullable_to_non_nullable
              as String?,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ));
  }
}

/// @nodoc

class _$_ServiceData implements _ServiceData {
  const _$_ServiceData(
      {this.id,
      this.name,
      this.categoryId,
      this.providerId,
      this.serviceFee,
      this.imageUrl,
      this.productPriceRange,
      final List<ProductData>? products})
      : _products = products;

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? categoryId;
  @override
  final String? providerId;
  @override
  final num? serviceFee;
  @override
  final String? imageUrl;
  @override
  final String? productPriceRange;
  final List<ProductData>? _products;
  @override
  List<ProductData>? get products {
    final value = _products;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServiceData(id: $id, name: $name, categoryId: $categoryId, providerId: $providerId, serviceFee: $serviceFee, imageUrl: $imageUrl, productPriceRange: $productPriceRange, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.providerId, providerId) &&
            const DeepCollectionEquality()
                .equals(other.serviceFee, serviceFee) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.productPriceRange, productPriceRange) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(providerId),
      const DeepCollectionEquality().hash(serviceFee),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(productPriceRange),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceDataCopyWith<_$_ServiceData> get copyWith =>
      __$$_ServiceDataCopyWithImpl<_$_ServiceData>(this, _$identity);
}

abstract class _ServiceData implements ServiceData {
  const factory _ServiceData(
      {final String? id,
      final String? name,
      final String? categoryId,
      final String? providerId,
      final num? serviceFee,
      final String? imageUrl,
      final String? productPriceRange,
      final List<ProductData>? products}) = _$_ServiceData;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get categoryId;
  @override
  String? get providerId;
  @override
  num? get serviceFee;
  @override
  String? get imageUrl;
  @override
  String? get productPriceRange;
  @override
  List<ProductData>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceDataCopyWith<_$_ServiceData> get copyWith =>
      throw _privateConstructorUsedError;
}
