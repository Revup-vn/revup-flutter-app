// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'enter_new_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnterNewPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String phoneNumber, String pincode, String? accessToken)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber, String pincode, String? accessToken)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber, String pincode, String? accessToken)?
        submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterNewPasswordEventCopyWith<$Res> {
  factory $EnterNewPasswordEventCopyWith(EnterNewPasswordEvent value,
          $Res Function(EnterNewPasswordEvent) then) =
      _$EnterNewPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnterNewPasswordEventCopyWithImpl<$Res>
    implements $EnterNewPasswordEventCopyWith<$Res> {
  _$EnterNewPasswordEventCopyWithImpl(this._value, this._then);

  final EnterNewPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(EnterNewPasswordEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$EnterNewPasswordEventCopyWithImpl<$Res>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, (v) => _then(v as _$Started));

  @override
  _$Started get _value => super._value as _$Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'EnterNewPasswordEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String phoneNumber, String pincode, String? accessToken)
        submit,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber, String pincode, String? accessToken)?
        submit,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber, String pincode, String? accessToken)?
        submit,
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
    required TResult Function(Started value) started,
    required TResult Function(Submit value) submit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements EnterNewPasswordEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$SubmitCopyWith<$Res> {
  factory _$$SubmitCopyWith(_$Submit value, $Res Function(_$Submit) then) =
      __$$SubmitCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String pincode, String? accessToken});
}

/// @nodoc
class __$$SubmitCopyWithImpl<$Res>
    extends _$EnterNewPasswordEventCopyWithImpl<$Res>
    implements _$$SubmitCopyWith<$Res> {
  __$$SubmitCopyWithImpl(_$Submit _value, $Res Function(_$Submit) _then)
      : super(_value, (v) => _then(v as _$Submit));

  @override
  _$Submit get _value => super._value as _$Submit;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? pincode = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$Submit(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Submit implements Submit {
  const _$Submit(
      {required this.phoneNumber, required this.pincode, this.accessToken});

  @override
  final String phoneNumber;
  @override
  final String pincode;
  @override
  final String? accessToken;

  @override
  String toString() {
    return 'EnterNewPasswordEvent.submit(phoneNumber: $phoneNumber, pincode: $pincode, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Submit &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.pincode, pincode) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(pincode),
      const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$SubmitCopyWith<_$Submit> get copyWith =>
      __$$SubmitCopyWithImpl<_$Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String phoneNumber, String pincode, String? accessToken)
        submit,
  }) {
    return submit(phoneNumber, pincode, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber, String pincode, String? accessToken)?
        submit,
  }) {
    return submit?.call(phoneNumber, pincode, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber, String pincode, String? accessToken)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(phoneNumber, pincode, accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements EnterNewPasswordEvent {
  const factory Submit(
      {required final String phoneNumber,
      required final String pincode,
      final String? accessToken}) = _$Submit;

  String get phoneNumber;
  String get pincode;
  String? get accessToken;
  @JsonKey(ignore: true)
  _$$SubmitCopyWith<_$Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnterNewPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber, String pincode,
            PinCodeType type, String? accessToken)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterNewPasswordStateCopyWith<$Res> {
  factory $EnterNewPasswordStateCopyWith(EnterNewPasswordState value,
          $Res Function(EnterNewPasswordState) then) =
      _$EnterNewPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnterNewPasswordStateCopyWithImpl<$Res>
    implements $EnterNewPasswordStateCopyWith<$Res> {
  _$EnterNewPasswordStateCopyWithImpl(this._value, this._then);

  final EnterNewPasswordState _value;
  // ignore: unused_field
  final $Res Function(EnterNewPasswordState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EnterNewPasswordStateCopyWithImpl<$Res>
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
    return 'EnterNewPasswordState.initial()';
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
    required TResult Function(String phoneNumber, String pincode,
            PinCodeType type, String? accessToken)
        success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EnterNewPasswordState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      String pincode,
      PinCodeType type,
      String? accessToken});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$EnterNewPasswordStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? pincode = freezed,
    Object? type = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$_Success(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: pincode == freezed
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PinCodeType,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.phoneNumber,
      required this.pincode,
      required this.type,
      required this.accessToken});

  @override
  final String phoneNumber;
  @override
  final String pincode;
  @override
  final PinCodeType type;
  @override
  final String? accessToken;

  @override
  String toString() {
    return 'EnterNewPasswordState.success(phoneNumber: $phoneNumber, pincode: $pincode, type: $type, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.pincode, pincode) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(pincode),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber, String pincode,
            PinCodeType type, String? accessToken)
        success,
    required TResult Function() failure,
  }) {
    return success(phoneNumber, pincode, type, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
  }) {
    return success?.call(phoneNumber, pincode, type, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(phoneNumber, pincode, type, accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements EnterNewPasswordState {
  const factory _Success(
      {required final String phoneNumber,
      required final String pincode,
      required final PinCodeType type,
      required final String? accessToken}) = _$_Success;

  String get phoneNumber;
  String get pincode;
  PinCodeType get type;
  String? get accessToken;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$EnterNewPasswordStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'EnterNewPasswordState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber, String pincode,
            PinCodeType type, String? accessToken)
        success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber, String pincode, PinCodeType type,
            String? accessToken)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements EnterNewPasswordState {
  const factory _Failure() = _$_Failure;
}
