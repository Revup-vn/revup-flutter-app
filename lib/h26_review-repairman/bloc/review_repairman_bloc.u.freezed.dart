// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review_repairman_bloc.u.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewRepairmanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int rating) fieldFill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int rating)? fieldFill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int rating)? fieldFill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FieldFill value) fieldFill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FieldFill value)? fieldFill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FieldFill value)? fieldFill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewRepairmanEventCopyWith<$Res> {
  factory $ReviewRepairmanEventCopyWith(ReviewRepairmanEvent value,
          $Res Function(ReviewRepairmanEvent) then) =
      _$ReviewRepairmanEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewRepairmanEventCopyWithImpl<$Res>
    implements $ReviewRepairmanEventCopyWith<$Res> {
  _$ReviewRepairmanEventCopyWithImpl(this._value, this._then);

  final ReviewRepairmanEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewRepairmanEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ReviewRepairmanEventCopyWithImpl<$Res>
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
    return 'ReviewRepairmanEvent.started()';
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
    required TResult Function(int rating) fieldFill,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int rating)? fieldFill,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int rating)? fieldFill,
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
    required TResult Function(_FieldFill value) fieldFill,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FieldFill value)? fieldFill,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FieldFill value)? fieldFill,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReviewRepairmanEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_FieldFillCopyWith<$Res> {
  factory _$$_FieldFillCopyWith(
          _$_FieldFill value, $Res Function(_$_FieldFill) then) =
      __$$_FieldFillCopyWithImpl<$Res>;
  $Res call({int rating});
}

/// @nodoc
class __$$_FieldFillCopyWithImpl<$Res>
    extends _$ReviewRepairmanEventCopyWithImpl<$Res>
    implements _$$_FieldFillCopyWith<$Res> {
  __$$_FieldFillCopyWithImpl(
      _$_FieldFill _value, $Res Function(_$_FieldFill) _then)
      : super(_value, (v) => _then(v as _$_FieldFill));

  @override
  _$_FieldFill get _value => super._value as _$_FieldFill;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_$_FieldFill(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FieldFill implements _FieldFill {
  const _$_FieldFill({required this.rating});

  @override
  final int rating;

  @override
  String toString() {
    return 'ReviewRepairmanEvent.fieldFill(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldFill &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_FieldFillCopyWith<_$_FieldFill> get copyWith =>
      __$$_FieldFillCopyWithImpl<_$_FieldFill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int rating) fieldFill,
  }) {
    return fieldFill(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int rating)? fieldFill,
  }) {
    return fieldFill?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int rating)? fieldFill,
    required TResult orElse(),
  }) {
    if (fieldFill != null) {
      return fieldFill(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FieldFill value) fieldFill,
  }) {
    return fieldFill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FieldFill value)? fieldFill,
  }) {
    return fieldFill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FieldFill value)? fieldFill,
    required TResult orElse(),
  }) {
    if (fieldFill != null) {
      return fieldFill(this);
    }
    return orElse();
  }
}

abstract class _FieldFill implements ReviewRepairmanEvent {
  const factory _FieldFill({required final int rating}) = _$_FieldFill;

  int get rating;
  @JsonKey(ignore: true)
  _$$_FieldFillCopyWith<_$_FieldFill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewRepairmanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int rating) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int rating)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int rating)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewRepairmanStateCopyWith<$Res> {
  factory $ReviewRepairmanStateCopyWith(ReviewRepairmanState value,
          $Res Function(ReviewRepairmanState) then) =
      _$ReviewRepairmanStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewRepairmanStateCopyWithImpl<$Res>
    implements $ReviewRepairmanStateCopyWith<$Res> {
  _$ReviewRepairmanStateCopyWithImpl(this._value, this._then);

  final ReviewRepairmanState _value;
  // ignore: unused_field
  final $Res Function(ReviewRepairmanState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ReviewRepairmanStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ReviewRepairmanState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int rating) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int rating)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int rating)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReviewRepairmanState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  $Res call({int rating});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res>
    extends _$ReviewRepairmanStateCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_$_Ready(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready({required this.rating});

  @override
  final int rating;

  @override
  String toString() {
    return 'ReviewRepairmanState.ready(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int rating) ready,
  }) {
    return ready(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int rating)? ready,
  }) {
    return ready?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int rating)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements ReviewRepairmanState {
  const factory _Ready({required final int rating}) = _$_Ready;

  int get rating;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}
