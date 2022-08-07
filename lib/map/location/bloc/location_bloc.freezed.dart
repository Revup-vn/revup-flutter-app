// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LatLng location) locationUpdated,
    required TResult Function(String placeId) placeSearch,
    required TResult Function(LatLng location) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionUpdated value) locationUpdated,
    required TResult Function(_PlaceSearch value) placeSearch,
    required TResult Function(_LocationSaved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LocationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LatLng location) locationUpdated,
    required TResult Function(String placeId) placeSearch,
    required TResult Function(LatLng location) saved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionUpdated value) locationUpdated,
    required TResult Function(_PlaceSearch value) placeSearch,
    required TResult Function(_LocationSaved value) saved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PositionUpdatedCopyWith<$Res> {
  factory _$$_PositionUpdatedCopyWith(
          _$_PositionUpdated value, $Res Function(_$_PositionUpdated) then) =
      __$$_PositionUpdatedCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class __$$_PositionUpdatedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$$_PositionUpdatedCopyWith<$Res> {
  __$$_PositionUpdatedCopyWithImpl(
      _$_PositionUpdated _value, $Res Function(_$_PositionUpdated) _then)
      : super(_value, (v) => _then(v as _$_PositionUpdated));

  @override
  _$_PositionUpdated get _value => super._value as _$_PositionUpdated;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_PositionUpdated(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_PositionUpdated implements _PositionUpdated {
  const _$_PositionUpdated({required this.location});

  @override
  final LatLng location;

  @override
  String toString() {
    return 'LocationEvent.locationUpdated(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionUpdated &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_PositionUpdatedCopyWith<_$_PositionUpdated> get copyWith =>
      __$$_PositionUpdatedCopyWithImpl<_$_PositionUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LatLng location) locationUpdated,
    required TResult Function(String placeId) placeSearch,
    required TResult Function(LatLng location) saved,
  }) {
    return locationUpdated(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
  }) {
    return locationUpdated?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionUpdated value) locationUpdated,
    required TResult Function(_PlaceSearch value) placeSearch,
    required TResult Function(_LocationSaved value) saved,
  }) {
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
  }) {
    return locationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class _PositionUpdated implements LocationEvent {
  const factory _PositionUpdated({required final LatLng location}) =
      _$_PositionUpdated;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$_PositionUpdatedCopyWith<_$_PositionUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlaceSearchCopyWith<$Res> {
  factory _$$_PlaceSearchCopyWith(
          _$_PlaceSearch value, $Res Function(_$_PlaceSearch) then) =
      __$$_PlaceSearchCopyWithImpl<$Res>;
  $Res call({String placeId});
}

/// @nodoc
class __$$_PlaceSearchCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$$_PlaceSearchCopyWith<$Res> {
  __$$_PlaceSearchCopyWithImpl(
      _$_PlaceSearch _value, $Res Function(_$_PlaceSearch) _then)
      : super(_value, (v) => _then(v as _$_PlaceSearch));

  @override
  _$_PlaceSearch get _value => super._value as _$_PlaceSearch;

  @override
  $Res call({
    Object? placeId = freezed,
  }) {
    return _then(_$_PlaceSearch(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlaceSearch implements _PlaceSearch {
  const _$_PlaceSearch({required this.placeId});

  @override
  final String placeId;

  @override
  String toString() {
    return 'LocationEvent.placeSearch(placeId: $placeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceSearch &&
            const DeepCollectionEquality().equals(other.placeId, placeId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(placeId));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceSearchCopyWith<_$_PlaceSearch> get copyWith =>
      __$$_PlaceSearchCopyWithImpl<_$_PlaceSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LatLng location) locationUpdated,
    required TResult Function(String placeId) placeSearch,
    required TResult Function(LatLng location) saved,
  }) {
    return placeSearch(placeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
  }) {
    return placeSearch?.call(placeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
    required TResult orElse(),
  }) {
    if (placeSearch != null) {
      return placeSearch(placeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionUpdated value) locationUpdated,
    required TResult Function(_PlaceSearch value) placeSearch,
    required TResult Function(_LocationSaved value) saved,
  }) {
    return placeSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
  }) {
    return placeSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
    required TResult orElse(),
  }) {
    if (placeSearch != null) {
      return placeSearch(this);
    }
    return orElse();
  }
}

abstract class _PlaceSearch implements LocationEvent {
  const factory _PlaceSearch({required final String placeId}) = _$_PlaceSearch;

  String get placeId;
  @JsonKey(ignore: true)
  _$$_PlaceSearchCopyWith<_$_PlaceSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationSavedCopyWith<$Res> {
  factory _$$_LocationSavedCopyWith(
          _$_LocationSaved value, $Res Function(_$_LocationSaved) then) =
      __$$_LocationSavedCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class __$$_LocationSavedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$$_LocationSavedCopyWith<$Res> {
  __$$_LocationSavedCopyWithImpl(
      _$_LocationSaved _value, $Res Function(_$_LocationSaved) _then)
      : super(_value, (v) => _then(v as _$_LocationSaved));

  @override
  _$_LocationSaved get _value => super._value as _$_LocationSaved;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_LocationSaved(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocationSaved implements _LocationSaved {
  const _$_LocationSaved({required this.location});

  @override
  final LatLng location;

  @override
  String toString() {
    return 'LocationEvent.saved(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationSaved &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_LocationSavedCopyWith<_$_LocationSaved> get copyWith =>
      __$$_LocationSavedCopyWithImpl<_$_LocationSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LatLng location) locationUpdated,
    required TResult Function(String placeId) placeSearch,
    required TResult Function(LatLng location) saved,
  }) {
    return saved(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
  }) {
    return saved?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LatLng location)? locationUpdated,
    TResult Function(String placeId)? placeSearch,
    TResult Function(LatLng location)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionUpdated value) locationUpdated,
    required TResult Function(_PlaceSearch value) placeSearch,
    required TResult Function(_LocationSaved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionUpdated value)? locationUpdated,
    TResult Function(_PlaceSearch value)? placeSearch,
    TResult Function(_LocationSaved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _LocationSaved implements LocationEvent {
  const factory _LocationSaved({required final LatLng location}) =
      _$_LocationSaved;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$_LocationSavedCopyWith<_$_LocationSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position location) initial,
    required TResult Function() loading,
    required TResult Function(String address) addressLoaded,
    required TResult Function(PlaceDetails placeDetails) placeDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddressLoaded value) addressLoaded,
    required TResult Function(_PlaceDetailsLoaded value) placeDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  $Res call({Position location});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_Initial(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.location});

  @override
  final Position location;

  @override
  String toString() {
    return 'LocationState.initial(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position location) initial,
    required TResult Function() loading,
    required TResult Function(String address) addressLoaded,
    required TResult Function(PlaceDetails placeDetails) placeDetailsLoaded,
  }) {
    return initial(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
  }) {
    return initial?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddressLoaded value) addressLoaded,
    required TResult Function(_PlaceDetailsLoaded value) placeDetailsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  const factory _Initial({required final Position location}) = _$_Initial;

  Position get location;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position location) initial,
    required TResult Function() loading,
    required TResult Function(String address) addressLoaded,
    required TResult Function(PlaceDetails placeDetails) placeDetailsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddressLoaded value) addressLoaded,
    required TResult Function(_PlaceDetailsLoaded value) placeDetailsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LocationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_AddressLoadedCopyWith<$Res> {
  factory _$$_AddressLoadedCopyWith(
          _$_AddressLoaded value, $Res Function(_$_AddressLoaded) then) =
      __$$_AddressLoadedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$$_AddressLoadedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_AddressLoadedCopyWith<$Res> {
  __$$_AddressLoadedCopyWithImpl(
      _$_AddressLoaded _value, $Res Function(_$_AddressLoaded) _then)
      : super(_value, (v) => _then(v as _$_AddressLoaded));

  @override
  _$_AddressLoaded get _value => super._value as _$_AddressLoaded;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$_AddressLoaded(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressLoaded implements _AddressLoaded {
  const _$_AddressLoaded({required this.address});

  @override
  final String address;

  @override
  String toString() {
    return 'LocationState.addressLoaded(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressLoaded &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$_AddressLoadedCopyWith<_$_AddressLoaded> get copyWith =>
      __$$_AddressLoadedCopyWithImpl<_$_AddressLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position location) initial,
    required TResult Function() loading,
    required TResult Function(String address) addressLoaded,
    required TResult Function(PlaceDetails placeDetails) placeDetailsLoaded,
  }) {
    return addressLoaded(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
  }) {
    return addressLoaded?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (addressLoaded != null) {
      return addressLoaded(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddressLoaded value) addressLoaded,
    required TResult Function(_PlaceDetailsLoaded value) placeDetailsLoaded,
  }) {
    return addressLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
  }) {
    return addressLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (addressLoaded != null) {
      return addressLoaded(this);
    }
    return orElse();
  }
}

abstract class _AddressLoaded implements LocationState {
  const factory _AddressLoaded({required final String address}) =
      _$_AddressLoaded;

  String get address;
  @JsonKey(ignore: true)
  _$$_AddressLoadedCopyWith<_$_AddressLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlaceDetailsLoadedCopyWith<$Res> {
  factory _$$_PlaceDetailsLoadedCopyWith(_$_PlaceDetailsLoaded value,
          $Res Function(_$_PlaceDetailsLoaded) then) =
      __$$_PlaceDetailsLoadedCopyWithImpl<$Res>;
  $Res call({PlaceDetails placeDetails});

  $PlaceDetailsCopyWith<$Res> get placeDetails;
}

/// @nodoc
class __$$_PlaceDetailsLoadedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_PlaceDetailsLoadedCopyWith<$Res> {
  __$$_PlaceDetailsLoadedCopyWithImpl(
      _$_PlaceDetailsLoaded _value, $Res Function(_$_PlaceDetailsLoaded) _then)
      : super(_value, (v) => _then(v as _$_PlaceDetailsLoaded));

  @override
  _$_PlaceDetailsLoaded get _value => super._value as _$_PlaceDetailsLoaded;

  @override
  $Res call({
    Object? placeDetails = freezed,
  }) {
    return _then(_$_PlaceDetailsLoaded(
      placeDetails: placeDetails == freezed
          ? _value.placeDetails
          : placeDetails // ignore: cast_nullable_to_non_nullable
              as PlaceDetails,
    ));
  }

  @override
  $PlaceDetailsCopyWith<$Res> get placeDetails {
    return $PlaceDetailsCopyWith<$Res>(_value.placeDetails, (value) {
      return _then(_value.copyWith(placeDetails: value));
    });
  }
}

/// @nodoc

class _$_PlaceDetailsLoaded implements _PlaceDetailsLoaded {
  const _$_PlaceDetailsLoaded({required this.placeDetails});

  @override
  final PlaceDetails placeDetails;

  @override
  String toString() {
    return 'LocationState.placeDetailsLoaded(placeDetails: $placeDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDetailsLoaded &&
            const DeepCollectionEquality()
                .equals(other.placeDetails, placeDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(placeDetails));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceDetailsLoadedCopyWith<_$_PlaceDetailsLoaded> get copyWith =>
      __$$_PlaceDetailsLoadedCopyWithImpl<_$_PlaceDetailsLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position location) initial,
    required TResult Function() loading,
    required TResult Function(String address) addressLoaded,
    required TResult Function(PlaceDetails placeDetails) placeDetailsLoaded,
  }) {
    return placeDetailsLoaded(placeDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
  }) {
    return placeDetailsLoaded?.call(placeDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position location)? initial,
    TResult Function()? loading,
    TResult Function(String address)? addressLoaded,
    TResult Function(PlaceDetails placeDetails)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (placeDetailsLoaded != null) {
      return placeDetailsLoaded(placeDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddressLoaded value) addressLoaded,
    required TResult Function(_PlaceDetailsLoaded value) placeDetailsLoaded,
  }) {
    return placeDetailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
  }) {
    return placeDetailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddressLoaded value)? addressLoaded,
    TResult Function(_PlaceDetailsLoaded value)? placeDetailsLoaded,
    required TResult orElse(),
  }) {
    if (placeDetailsLoaded != null) {
      return placeDetailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _PlaceDetailsLoaded implements LocationState {
  const factory _PlaceDetailsLoaded(
      {required final PlaceDetails placeDetails}) = _$_PlaceDetailsLoaded;

  PlaceDetails get placeDetails;
  @JsonKey(ignore: true)
  _$$_PlaceDetailsLoadedCopyWith<_$_PlaceDetailsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
