// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'countdown_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountdownEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secs) ticked,
    required TResult Function(Function0<dynamic> onTimeOut) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int secs)? ticked,
    TResult Function(Function0<dynamic> onTimeOut)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secs)? ticked,
    TResult Function(Function0<dynamic> onTimeOut)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ticked value) ticked,
    required TResult Function(_timeOut value) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ticked value)? ticked,
    TResult Function(_timeOut value)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ticked value)? ticked,
    TResult Function(_timeOut value)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownEventCopyWith<$Res> {
  factory $CountdownEventCopyWith(
          CountdownEvent value, $Res Function(CountdownEvent) then) =
      _$CountdownEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountdownEventCopyWithImpl<$Res>
    implements $CountdownEventCopyWith<$Res> {
  _$CountdownEventCopyWithImpl(this._value, this._then);

  final CountdownEvent _value;
  // ignore: unused_field
  final $Res Function(CountdownEvent) _then;
}

/// @nodoc
abstract class _$$_tickedCopyWith<$Res> {
  factory _$$_tickedCopyWith(_$_ticked value, $Res Function(_$_ticked) then) =
      __$$_tickedCopyWithImpl<$Res>;
  $Res call({int secs});
}

/// @nodoc
class __$$_tickedCopyWithImpl<$Res> extends _$CountdownEventCopyWithImpl<$Res>
    implements _$$_tickedCopyWith<$Res> {
  __$$_tickedCopyWithImpl(_$_ticked _value, $Res Function(_$_ticked) _then)
      : super(_value, (v) => _then(v as _$_ticked));

  @override
  _$_ticked get _value => super._value as _$_ticked;

  @override
  $Res call({
    Object? secs = freezed,
  }) {
    return _then(_$_ticked(
      secs == freezed
          ? _value.secs
          : secs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ticked implements _ticked {
  const _$_ticked(this.secs);

  @override
  final int secs;

  @override
  String toString() {
    return 'CountdownEvent.ticked(secs: $secs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ticked &&
            const DeepCollectionEquality().equals(other.secs, secs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(secs));

  @JsonKey(ignore: true)
  @override
  _$$_tickedCopyWith<_$_ticked> get copyWith =>
      __$$_tickedCopyWithImpl<_$_ticked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secs) ticked,
    required TResult Function(Function0<dynamic> onTimeOut) timeout,
  }) {
    return ticked(secs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int secs)? ticked,
    TResult Function(Function0<dynamic> onTimeOut)? timeout,
  }) {
    return ticked?.call(secs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secs)? ticked,
    TResult Function(Function0<dynamic> onTimeOut)? timeout,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(secs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ticked value) ticked,
    required TResult Function(_timeOut value) timeout,
  }) {
    return ticked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ticked value)? ticked,
    TResult Function(_timeOut value)? timeout,
  }) {
    return ticked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ticked value)? ticked,
    TResult Function(_timeOut value)? timeout,
    required TResult orElse(),
  }) {
    if (ticked != null) {
      return ticked(this);
    }
    return orElse();
  }
}

abstract class _ticked implements CountdownEvent {
  const factory _ticked(final int secs) = _$_ticked;

  int get secs;
  @JsonKey(ignore: true)
  _$$_tickedCopyWith<_$_ticked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_timeOutCopyWith<$Res> {
  factory _$$_timeOutCopyWith(
          _$_timeOut value, $Res Function(_$_timeOut) then) =
      __$$_timeOutCopyWithImpl<$Res>;
  $Res call({Function0<dynamic> onTimeOut});
}

/// @nodoc
class __$$_timeOutCopyWithImpl<$Res> extends _$CountdownEventCopyWithImpl<$Res>
    implements _$$_timeOutCopyWith<$Res> {
  __$$_timeOutCopyWithImpl(_$_timeOut _value, $Res Function(_$_timeOut) _then)
      : super(_value, (v) => _then(v as _$_timeOut));

  @override
  _$_timeOut get _value => super._value as _$_timeOut;

  @override
  $Res call({
    Object? onTimeOut = freezed,
  }) {
    return _then(_$_timeOut(
      onTimeOut == freezed
          ? _value.onTimeOut
          : onTimeOut // ignore: cast_nullable_to_non_nullable
              as Function0<dynamic>,
    ));
  }
}

/// @nodoc

class _$_timeOut implements _timeOut {
  const _$_timeOut(this.onTimeOut);

  @override
  final Function0<dynamic> onTimeOut;

  @override
  String toString() {
    return 'CountdownEvent.timeout(onTimeOut: $onTimeOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_timeOut &&
            (identical(other.onTimeOut, onTimeOut) ||
                other.onTimeOut == onTimeOut));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onTimeOut);

  @JsonKey(ignore: true)
  @override
  _$$_timeOutCopyWith<_$_timeOut> get copyWith =>
      __$$_timeOutCopyWithImpl<_$_timeOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secs) ticked,
    required TResult Function(Function0<dynamic> onTimeOut) timeout,
  }) {
    return timeout(onTimeOut);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int secs)? ticked,
    TResult Function(Function0<dynamic> onTimeOut)? timeout,
  }) {
    return timeout?.call(onTimeOut);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secs)? ticked,
    TResult Function(Function0<dynamic> onTimeOut)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(onTimeOut);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ticked value) ticked,
    required TResult Function(_timeOut value) timeout,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ticked value)? ticked,
    TResult Function(_timeOut value)? timeout,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ticked value)? ticked,
    TResult Function(_timeOut value)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _timeOut implements CountdownEvent {
  const factory _timeOut(final Function0<dynamic> onTimeOut) = _$_timeOut;

  Function0<dynamic> get onTimeOut;
  @JsonKey(ignore: true)
  _$$_timeOutCopyWith<_$_timeOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountdownState {
  int get secs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secs) countdownInProgress,
    required TResult Function(int secs) initial,
    required TResult Function(int secs) countdownComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownInProgress value) countdownInProgress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_countdownComplete value) countdownComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountdownStateCopyWith<CountdownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownStateCopyWith<$Res> {
  factory $CountdownStateCopyWith(
          CountdownState value, $Res Function(CountdownState) then) =
      _$CountdownStateCopyWithImpl<$Res>;
  $Res call({int secs});
}

/// @nodoc
class _$CountdownStateCopyWithImpl<$Res>
    implements $CountdownStateCopyWith<$Res> {
  _$CountdownStateCopyWithImpl(this._value, this._then);

  final CountdownState _value;
  // ignore: unused_field
  final $Res Function(CountdownState) _then;

  @override
  $Res call({
    Object? secs = freezed,
  }) {
    return _then(_value.copyWith(
      secs: secs == freezed
          ? _value.secs
          : secs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_CountdownInProgressCopyWith<$Res>
    implements $CountdownStateCopyWith<$Res> {
  factory _$$_CountdownInProgressCopyWith(_$_CountdownInProgress value,
          $Res Function(_$_CountdownInProgress) then) =
      __$$_CountdownInProgressCopyWithImpl<$Res>;
  @override
  $Res call({int secs});
}

/// @nodoc
class __$$_CountdownInProgressCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res>
    implements _$$_CountdownInProgressCopyWith<$Res> {
  __$$_CountdownInProgressCopyWithImpl(_$_CountdownInProgress _value,
      $Res Function(_$_CountdownInProgress) _then)
      : super(_value, (v) => _then(v as _$_CountdownInProgress));

  @override
  _$_CountdownInProgress get _value => super._value as _$_CountdownInProgress;

  @override
  $Res call({
    Object? secs = freezed,
  }) {
    return _then(_$_CountdownInProgress(
      secs == freezed
          ? _value.secs
          : secs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CountdownInProgress implements _CountdownInProgress {
  const _$_CountdownInProgress(this.secs);

  @override
  final int secs;

  @override
  String toString() {
    return 'CountdownState.countdownInProgress(secs: $secs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountdownInProgress &&
            const DeepCollectionEquality().equals(other.secs, secs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(secs));

  @JsonKey(ignore: true)
  @override
  _$$_CountdownInProgressCopyWith<_$_CountdownInProgress> get copyWith =>
      __$$_CountdownInProgressCopyWithImpl<_$_CountdownInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secs) countdownInProgress,
    required TResult Function(int secs) initial,
    required TResult Function(int secs) countdownComplete,
  }) {
    return countdownInProgress(secs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
  }) {
    return countdownInProgress?.call(secs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
    required TResult orElse(),
  }) {
    if (countdownInProgress != null) {
      return countdownInProgress(secs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownInProgress value) countdownInProgress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_countdownComplete value) countdownComplete,
  }) {
    return countdownInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
  }) {
    return countdownInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
    required TResult orElse(),
  }) {
    if (countdownInProgress != null) {
      return countdownInProgress(this);
    }
    return orElse();
  }
}

abstract class _CountdownInProgress implements CountdownState {
  const factory _CountdownInProgress(final int secs) = _$_CountdownInProgress;

  @override
  int get secs;
  @override
  @JsonKey(ignore: true)
  _$$_CountdownInProgressCopyWith<_$_CountdownInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CountdownStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({int secs});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$CountdownStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? secs = freezed,
  }) {
    return _then(_$_Initial(
      secs == freezed
          ? _value.secs
          : secs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial([this.secs = CountdownBloc.kDuration]);

  @override
  @JsonKey()
  final int secs;

  @override
  String toString() {
    return 'CountdownState.initial(secs: $secs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.secs, secs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(secs));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secs) countdownInProgress,
    required TResult Function(int secs) initial,
    required TResult Function(int secs) countdownComplete,
  }) {
    return initial(secs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
  }) {
    return initial?.call(secs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(secs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownInProgress value) countdownInProgress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_countdownComplete value) countdownComplete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CountdownState {
  const factory _Initial([final int secs]) = _$_Initial;

  @override
  int get secs;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_countdownCompleteCopyWith<$Res>
    implements $CountdownStateCopyWith<$Res> {
  factory _$$_countdownCompleteCopyWith(_$_countdownComplete value,
          $Res Function(_$_countdownComplete) then) =
      __$$_countdownCompleteCopyWithImpl<$Res>;
  @override
  $Res call({int secs});
}

/// @nodoc
class __$$_countdownCompleteCopyWithImpl<$Res>
    extends _$CountdownStateCopyWithImpl<$Res>
    implements _$$_countdownCompleteCopyWith<$Res> {
  __$$_countdownCompleteCopyWithImpl(
      _$_countdownComplete _value, $Res Function(_$_countdownComplete) _then)
      : super(_value, (v) => _then(v as _$_countdownComplete));

  @override
  _$_countdownComplete get _value => super._value as _$_countdownComplete;

  @override
  $Res call({
    Object? secs = freezed,
  }) {
    return _then(_$_countdownComplete(
      secs == freezed
          ? _value.secs
          : secs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_countdownComplete implements _countdownComplete {
  const _$_countdownComplete([this.secs = 0]);

  @override
  @JsonKey()
  final int secs;

  @override
  String toString() {
    return 'CountdownState.countdownComplete(secs: $secs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_countdownComplete &&
            const DeepCollectionEquality().equals(other.secs, secs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(secs));

  @JsonKey(ignore: true)
  @override
  _$$_countdownCompleteCopyWith<_$_countdownComplete> get copyWith =>
      __$$_countdownCompleteCopyWithImpl<_$_countdownComplete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secs) countdownInProgress,
    required TResult Function(int secs) initial,
    required TResult Function(int secs) countdownComplete,
  }) {
    return countdownComplete(secs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
  }) {
    return countdownComplete?.call(secs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secs)? countdownInProgress,
    TResult Function(int secs)? initial,
    TResult Function(int secs)? countdownComplete,
    required TResult orElse(),
  }) {
    if (countdownComplete != null) {
      return countdownComplete(secs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountdownInProgress value) countdownInProgress,
    required TResult Function(_Initial value) initial,
    required TResult Function(_countdownComplete value) countdownComplete,
  }) {
    return countdownComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
  }) {
    return countdownComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountdownInProgress value)? countdownInProgress,
    TResult Function(_Initial value)? initial,
    TResult Function(_countdownComplete value)? countdownComplete,
    required TResult orElse(),
  }) {
    if (countdownComplete != null) {
      return countdownComplete(this);
    }
    return orElse();
  }
}

abstract class _countdownComplete implements CountdownState {
  const factory _countdownComplete([final int secs]) = _$_countdownComplete;

  @override
  int get secs;
  @override
  @JsonKey(ignore: true)
  _$$_countdownCompleteCopyWith<_$_countdownComplete> get copyWith =>
      throw _privateConstructorUsedError;
}
