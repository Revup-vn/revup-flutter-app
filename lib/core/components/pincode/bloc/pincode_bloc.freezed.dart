// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pincode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PincodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) started,
    required TResult Function(bool isTapable) pressedResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? started,
    TResult Function(bool isTapable)? pressedResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? started,
    TResult Function(bool isTapable)? pressedResendOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PressResendOTP value) pressedResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PressResendOTP value)? pressedResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeEventCopyWith<$Res> {
  factory $PincodeEventCopyWith(
          PincodeEvent value, $Res Function(PincodeEvent) then) =
      _$PincodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PincodeEventCopyWithImpl<$Res> implements $PincodeEventCopyWith<$Res> {
  _$PincodeEventCopyWithImpl(this._value, this._then);

  final PincodeEvent _value;
  // ignore: unused_field
  final $Res Function(PincodeEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  $Res call({bool isEnable});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$PincodeEventCopyWithImpl<$Res>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, (v) => _then(v as _$Started));

  @override
  _$Started get _value => super._value as _$Started;

  @override
  $Res call({
    Object? isEnable = freezed,
  }) {
    return _then(_$Started(
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required this.isEnable});

  @override
  final bool isEnable;

  @override
  String toString() {
    return 'PincodeEvent.started(isEnable: $isEnable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other.isEnable, isEnable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEnable));

  @JsonKey(ignore: true)
  @override
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) started,
    required TResult Function(bool isTapable) pressedResendOTP,
  }) {
    return started(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? started,
    TResult Function(bool isTapable)? pressedResendOTP,
  }) {
    return started?.call(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? started,
    TResult Function(bool isTapable)? pressedResendOTP,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isEnable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PressResendOTP value) pressedResendOTP,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PressResendOTP value)? pressedResendOTP,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PincodeEvent {
  const factory Started({required final bool isEnable}) = _$Started;

  bool get isEnable;
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PressResendOTPCopyWith<$Res> {
  factory _$$PressResendOTPCopyWith(
          _$PressResendOTP value, $Res Function(_$PressResendOTP) then) =
      __$$PressResendOTPCopyWithImpl<$Res>;
  $Res call({bool isTapable});
}

/// @nodoc
class __$$PressResendOTPCopyWithImpl<$Res>
    extends _$PincodeEventCopyWithImpl<$Res>
    implements _$$PressResendOTPCopyWith<$Res> {
  __$$PressResendOTPCopyWithImpl(
      _$PressResendOTP _value, $Res Function(_$PressResendOTP) _then)
      : super(_value, (v) => _then(v as _$PressResendOTP));

  @override
  _$PressResendOTP get _value => super._value as _$PressResendOTP;

  @override
  $Res call({
    Object? isTapable = freezed,
  }) {
    return _then(_$PressResendOTP(
      isTapable: isTapable == freezed
          ? _value.isTapable
          : isTapable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PressResendOTP implements PressResendOTP {
  const _$PressResendOTP({required this.isTapable});

  @override
  final bool isTapable;

  @override
  String toString() {
    return 'PincodeEvent.pressedResendOTP(isTapable: $isTapable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PressResendOTP &&
            const DeepCollectionEquality().equals(other.isTapable, isTapable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isTapable));

  @JsonKey(ignore: true)
  @override
  _$$PressResendOTPCopyWith<_$PressResendOTP> get copyWith =>
      __$$PressResendOTPCopyWithImpl<_$PressResendOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) started,
    required TResult Function(bool isTapable) pressedResendOTP,
  }) {
    return pressedResendOTP(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? started,
    TResult Function(bool isTapable)? pressedResendOTP,
  }) {
    return pressedResendOTP?.call(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? started,
    TResult Function(bool isTapable)? pressedResendOTP,
    required TResult orElse(),
  }) {
    if (pressedResendOTP != null) {
      return pressedResendOTP(isTapable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(PressResendOTP value) pressedResendOTP,
  }) {
    return pressedResendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PressResendOTP value)? pressedResendOTP,
  }) {
    return pressedResendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    required TResult orElse(),
  }) {
    if (pressedResendOTP != null) {
      return pressedResendOTP(this);
    }
    return orElse();
  }
}

abstract class PressResendOTP implements PincodeEvent {
  const factory PressResendOTP({required final bool isTapable}) =
      _$PressResendOTP;

  bool get isTapable;
  @JsonKey(ignore: true)
  _$$PressResendOTPCopyWith<_$PressResendOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PincodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) initial,
    required TResult Function(bool isEnable) ready,
    required TResult Function(bool isTapable) timeComplete,
    required TResult Function(bool showPassword) showOrHidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_TimeComplete value) timeComplete,
    required TResult Function(_ShowOrHidePassword value) showOrHidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PincodeStateCopyWith<$Res> {
  factory $PincodeStateCopyWith(
          PincodeState value, $Res Function(PincodeState) then) =
      _$PincodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PincodeStateCopyWithImpl<$Res> implements $PincodeStateCopyWith<$Res> {
  _$PincodeStateCopyWithImpl(this._value, this._then);

  final PincodeState _value;
  // ignore: unused_field
  final $Res Function(PincodeState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  $Res call({bool isEnable});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$PincodeStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? isEnable = freezed,
  }) {
    return _then(_$_Initial(
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.isEnable});

  @override
  final bool isEnable;

  @override
  String toString() {
    return 'PincodeState.initial(isEnable: $isEnable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.isEnable, isEnable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEnable));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) initial,
    required TResult Function(bool isEnable) ready,
    required TResult Function(bool isTapable) timeComplete,
    required TResult Function(bool showPassword) showOrHidePassword,
  }) {
    return initial(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
  }) {
    return initial?.call(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isEnable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_TimeComplete value) timeComplete,
    required TResult Function(_ShowOrHidePassword value) showOrHidePassword,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PincodeState {
  const factory _Initial({required final bool isEnable}) = _$_Initial;

  bool get isEnable;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  $Res call({bool isEnable});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res> extends _$PincodeStateCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;

  @override
  $Res call({
    Object? isEnable = freezed,
  }) {
    return _then(_$_Ready(
      isEnable: isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready({required this.isEnable});

  @override
  final bool isEnable;

  @override
  String toString() {
    return 'PincodeState.ready(isEnable: $isEnable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready &&
            const DeepCollectionEquality().equals(other.isEnable, isEnable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isEnable));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) initial,
    required TResult Function(bool isEnable) ready,
    required TResult Function(bool isTapable) timeComplete,
    required TResult Function(bool showPassword) showOrHidePassword,
  }) {
    return ready(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
  }) {
    return ready?.call(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(isEnable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_TimeComplete value) timeComplete,
    required TResult Function(_ShowOrHidePassword value) showOrHidePassword,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements PincodeState {
  const factory _Ready({required final bool isEnable}) = _$_Ready;

  bool get isEnable;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeCompleteCopyWith<$Res> {
  factory _$$_TimeCompleteCopyWith(
          _$_TimeComplete value, $Res Function(_$_TimeComplete) then) =
      __$$_TimeCompleteCopyWithImpl<$Res>;
  $Res call({bool isTapable});
}

/// @nodoc
class __$$_TimeCompleteCopyWithImpl<$Res>
    extends _$PincodeStateCopyWithImpl<$Res>
    implements _$$_TimeCompleteCopyWith<$Res> {
  __$$_TimeCompleteCopyWithImpl(
      _$_TimeComplete _value, $Res Function(_$_TimeComplete) _then)
      : super(_value, (v) => _then(v as _$_TimeComplete));

  @override
  _$_TimeComplete get _value => super._value as _$_TimeComplete;

  @override
  $Res call({
    Object? isTapable = freezed,
  }) {
    return _then(_$_TimeComplete(
      isTapable: isTapable == freezed
          ? _value.isTapable
          : isTapable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TimeComplete implements _TimeComplete {
  const _$_TimeComplete({required this.isTapable});

  @override
  final bool isTapable;

  @override
  String toString() {
    return 'PincodeState.timeComplete(isTapable: $isTapable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeComplete &&
            const DeepCollectionEquality().equals(other.isTapable, isTapable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isTapable));

  @JsonKey(ignore: true)
  @override
  _$$_TimeCompleteCopyWith<_$_TimeComplete> get copyWith =>
      __$$_TimeCompleteCopyWithImpl<_$_TimeComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) initial,
    required TResult Function(bool isEnable) ready,
    required TResult Function(bool isTapable) timeComplete,
    required TResult Function(bool showPassword) showOrHidePassword,
  }) {
    return timeComplete(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
  }) {
    return timeComplete?.call(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (timeComplete != null) {
      return timeComplete(isTapable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_TimeComplete value) timeComplete,
    required TResult Function(_ShowOrHidePassword value) showOrHidePassword,
  }) {
    return timeComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
  }) {
    return timeComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (timeComplete != null) {
      return timeComplete(this);
    }
    return orElse();
  }
}

abstract class _TimeComplete implements PincodeState {
  const factory _TimeComplete({required final bool isTapable}) =
      _$_TimeComplete;

  bool get isTapable;
  @JsonKey(ignore: true)
  _$$_TimeCompleteCopyWith<_$_TimeComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowOrHidePasswordCopyWith<$Res> {
  factory _$$_ShowOrHidePasswordCopyWith(_$_ShowOrHidePassword value,
          $Res Function(_$_ShowOrHidePassword) then) =
      __$$_ShowOrHidePasswordCopyWithImpl<$Res>;
  $Res call({bool showPassword});
}

/// @nodoc
class __$$_ShowOrHidePasswordCopyWithImpl<$Res>
    extends _$PincodeStateCopyWithImpl<$Res>
    implements _$$_ShowOrHidePasswordCopyWith<$Res> {
  __$$_ShowOrHidePasswordCopyWithImpl(
      _$_ShowOrHidePassword _value, $Res Function(_$_ShowOrHidePassword) _then)
      : super(_value, (v) => _then(v as _$_ShowOrHidePassword));

  @override
  _$_ShowOrHidePassword get _value => super._value as _$_ShowOrHidePassword;

  @override
  $Res call({
    Object? showPassword = freezed,
  }) {
    return _then(_$_ShowOrHidePassword(
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHidePassword implements _ShowOrHidePassword {
  const _$_ShowOrHidePassword({required this.showPassword});

  @override
  final bool showPassword;

  @override
  String toString() {
    return 'PincodeState.showOrHidePassword(showPassword: $showPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHidePassword &&
            const DeepCollectionEquality()
                .equals(other.showPassword, showPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(showPassword));

  @JsonKey(ignore: true)
  @override
  _$$_ShowOrHidePasswordCopyWith<_$_ShowOrHidePassword> get copyWith =>
      __$$_ShowOrHidePasswordCopyWithImpl<_$_ShowOrHidePassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEnable) initial,
    required TResult Function(bool isEnable) ready,
    required TResult Function(bool isTapable) timeComplete,
    required TResult Function(bool showPassword) showOrHidePassword,
  }) {
    return showOrHidePassword(showPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
  }) {
    return showOrHidePassword?.call(showPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEnable)? initial,
    TResult Function(bool isEnable)? ready,
    TResult Function(bool isTapable)? timeComplete,
    TResult Function(bool showPassword)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (showOrHidePassword != null) {
      return showOrHidePassword(showPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_TimeComplete value) timeComplete,
    required TResult Function(_ShowOrHidePassword value) showOrHidePassword,
  }) {
    return showOrHidePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
  }) {
    return showOrHidePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_TimeComplete value)? timeComplete,
    TResult Function(_ShowOrHidePassword value)? showOrHidePassword,
    required TResult orElse(),
  }) {
    if (showOrHidePassword != null) {
      return showOrHidePassword(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHidePassword implements PincodeState {
  const factory _ShowOrHidePassword({required final bool showPassword}) =
      _$_ShowOrHidePassword;

  bool get showPassword;
  @JsonKey(ignore: true)
  _$$_ShowOrHidePasswordCopyWith<_$_ShowOrHidePassword> get copyWith =>
      throw _privateConstructorUsedError;
}
