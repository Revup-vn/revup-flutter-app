// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OTPEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) started,
    required TResult Function(String phoneNumber, String otpCode) submit,
    required TResult Function(String phoneNumber, String? errorMessage)
        pressResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submit value) submit,
    required TResult Function(PressResendOTP value) pressResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OTPEventCopyWith<OTPEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPEventCopyWith<$Res> {
  factory $OTPEventCopyWith(OTPEvent value, $Res Function(OTPEvent) then) =
      _$OTPEventCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$OTPEventCopyWithImpl<$Res> implements $OTPEventCopyWith<$Res> {
  _$OTPEventCopyWithImpl(this._value, this._then);

  final OTPEvent _value;
  // ignore: unused_field
  final $Res Function(OTPEvent) _then;

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
abstract class _$$StartedCopyWith<$Res> implements $OTPEventCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  @override
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$OTPEventCopyWithImpl<$Res>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, (v) => _then(v as _$Started));

  @override
  _$Started get _value => super._value as _$Started;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$Started(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OTPEvent.started(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) started,
    required TResult Function(String phoneNumber, String otpCode) submit,
    required TResult Function(String phoneNumber, String? errorMessage)
        pressResendOTP,
  }) {
    return started(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
  }) {
    return started?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submit value) submit,
    required TResult Function(PressResendOTP value) pressResendOTP,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements OTPEvent {
  const factory Started({required final String phoneNumber}) = _$Started;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitCopyWith<$Res> implements $OTPEventCopyWith<$Res> {
  factory _$$SubmitCopyWith(_$Submit value, $Res Function(_$Submit) then) =
      __$$SubmitCopyWithImpl<$Res>;
  @override
  $Res call({String phoneNumber, String otpCode});
}

/// @nodoc
class __$$SubmitCopyWithImpl<$Res> extends _$OTPEventCopyWithImpl<$Res>
    implements _$$SubmitCopyWith<$Res> {
  __$$SubmitCopyWithImpl(_$Submit _value, $Res Function(_$Submit) _then)
      : super(_value, (v) => _then(v as _$Submit));

  @override
  _$Submit get _value => super._value as _$Submit;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otpCode = freezed,
  }) {
    return _then(_$Submit(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: otpCode == freezed
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Submit implements Submit {
  const _$Submit({required this.phoneNumber, required this.otpCode});

  @override
  final String phoneNumber;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'OTPEvent.submit(phoneNumber: $phoneNumber, otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Submit &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.otpCode, otpCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(otpCode));

  @JsonKey(ignore: true)
  @override
  _$$SubmitCopyWith<_$Submit> get copyWith =>
      __$$SubmitCopyWithImpl<_$Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) started,
    required TResult Function(String phoneNumber, String otpCode) submit,
    required TResult Function(String phoneNumber, String? errorMessage)
        pressResendOTP,
  }) {
    return submit(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
  }) {
    return submit?.call(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(phoneNumber, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submit value) submit,
    required TResult Function(PressResendOTP value) pressResendOTP,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements OTPEvent {
  const factory Submit(
      {required final String phoneNumber,
      required final String otpCode}) = _$Submit;

  @override
  String get phoneNumber;
  String get otpCode;
  @override
  @JsonKey(ignore: true)
  _$$SubmitCopyWith<_$Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PressResendOTPCopyWith<$Res>
    implements $OTPEventCopyWith<$Res> {
  factory _$$PressResendOTPCopyWith(
          _$PressResendOTP value, $Res Function(_$PressResendOTP) then) =
      __$$PressResendOTPCopyWithImpl<$Res>;
  @override
  $Res call({String phoneNumber, String? errorMessage});
}

/// @nodoc
class __$$PressResendOTPCopyWithImpl<$Res> extends _$OTPEventCopyWithImpl<$Res>
    implements _$$PressResendOTPCopyWith<$Res> {
  __$$PressResendOTPCopyWithImpl(
      _$PressResendOTP _value, $Res Function(_$PressResendOTP) _then)
      : super(_value, (v) => _then(v as _$PressResendOTP));

  @override
  _$PressResendOTP get _value => super._value as _$PressResendOTP;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PressResendOTP(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PressResendOTP implements PressResendOTP {
  const _$PressResendOTP({required this.phoneNumber, this.errorMessage});

  @override
  final String phoneNumber;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'OTPEvent.pressResendOTP(phoneNumber: $phoneNumber, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PressResendOTP &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$PressResendOTPCopyWith<_$PressResendOTP> get copyWith =>
      __$$PressResendOTPCopyWithImpl<_$PressResendOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) started,
    required TResult Function(String phoneNumber, String otpCode) submit,
    required TResult Function(String phoneNumber, String? errorMessage)
        pressResendOTP,
  }) {
    return pressResendOTP(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
  }) {
    return pressResendOTP?.call(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? started,
    TResult Function(String phoneNumber, String otpCode)? submit,
    TResult Function(String phoneNumber, String? errorMessage)? pressResendOTP,
    required TResult orElse(),
  }) {
    if (pressResendOTP != null) {
      return pressResendOTP(phoneNumber, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submit value) submit,
    required TResult Function(PressResendOTP value) pressResendOTP,
  }) {
    return pressResendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
  }) {
    return pressResendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submit value)? submit,
    TResult Function(PressResendOTP value)? pressResendOTP,
    required TResult orElse(),
  }) {
    if (pressResendOTP != null) {
      return pressResendOTP(this);
    }
    return orElse();
  }
}

abstract class PressResendOTP implements OTPEvent {
  const factory PressResendOTP(
      {required final String phoneNumber,
      final String? errorMessage}) = _$PressResendOTP;

  @override
  String get phoneNumber;
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PressResendOTPCopyWith<_$PressResendOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OTPState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(
            String phoneNumber, String accessToken, PinCodeType type)
        success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String phoneNumber, String? errorMessage) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Resend value) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPStateCopyWith<$Res> {
  factory $OTPStateCopyWith(OTPState value, $Res Function(OTPState) then) =
      _$OTPStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OTPStateCopyWithImpl<$Res> implements $OTPStateCopyWith<$Res> {
  _$OTPStateCopyWithImpl(this._value, this._then);

  final OTPState _value;
  // ignore: unused_field
  final $Res Function(OTPState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$OTPStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_Initial(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.phoneNumber});

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'OTPState.initial(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(
            String phoneNumber, String accessToken, PinCodeType type)
        success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String phoneNumber, String? errorMessage) resend,
  }) {
    return initial(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
  }) {
    return initial?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Resend value) resend,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OTPState {
  const factory _Initial({final String? phoneNumber}) = _$_Initial;

  String? get phoneNumber;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String accessToken, PinCodeType type});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$OTPStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? accessToken = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Success(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PinCodeType,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.phoneNumber,
      required this.accessToken,
      required this.type});

  @override
  final String phoneNumber;
  @override
  final String accessToken;
  @override
  final PinCodeType type;

  @override
  String toString() {
    return 'OTPState.success(phoneNumber: $phoneNumber, accessToken: $accessToken, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(
            String phoneNumber, String accessToken, PinCodeType type)
        success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String phoneNumber, String? errorMessage) resend,
  }) {
    return success(phoneNumber, accessToken, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
  }) {
    return success?.call(phoneNumber, accessToken, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(phoneNumber, accessToken, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Resend value) resend,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements OTPState {
  const factory _Success(
      {required final String phoneNumber,
      required final String accessToken,
      required final PinCodeType type}) = _$_Success;

  String get phoneNumber;
  String get accessToken;
  PinCodeType get type;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$OTPStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Failure(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'OTPState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(
            String phoneNumber, String accessToken, PinCodeType type)
        success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String phoneNumber, String? errorMessage) resend,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Resend value) resend,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OTPState {
  const factory _Failure({required final String errorMessage}) = _$_Failure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendCopyWith<$Res> {
  factory _$$_ResendCopyWith(_$_Resend value, $Res Function(_$_Resend) then) =
      __$$_ResendCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String? errorMessage});
}

/// @nodoc
class __$$_ResendCopyWithImpl<$Res> extends _$OTPStateCopyWithImpl<$Res>
    implements _$$_ResendCopyWith<$Res> {
  __$$_ResendCopyWithImpl(_$_Resend _value, $Res Function(_$_Resend) _then)
      : super(_value, (v) => _then(v as _$_Resend));

  @override
  _$_Resend get _value => super._value as _$_Resend;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Resend(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Resend implements _Resend {
  const _$_Resend({required this.phoneNumber, this.errorMessage});

  @override
  final String phoneNumber;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'OTPState.resend(phoneNumber: $phoneNumber, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Resend &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ResendCopyWith<_$_Resend> get copyWith =>
      __$$_ResendCopyWithImpl<_$_Resend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber) initial,
    required TResult Function(
            String phoneNumber, String accessToken, PinCodeType type)
        success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String phoneNumber, String? errorMessage) resend,
  }) {
    return resend(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
  }) {
    return resend?.call(phoneNumber, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber)? initial,
    TResult Function(String phoneNumber, String accessToken, PinCodeType type)?
        success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String phoneNumber, String? errorMessage)? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(phoneNumber, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Resend value) resend,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class _Resend implements OTPState {
  const factory _Resend(
      {required final String phoneNumber,
      final String? errorMessage}) = _$_Resend;

  String get phoneNumber;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_ResendCopyWith<_$_Resend> get copyWith =>
      throw _privateConstructorUsedError;
}
