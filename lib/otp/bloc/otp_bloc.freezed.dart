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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTapable) started,
    required TResult Function(String phoneNumber, String otpCode) submitToLogin,
    required TResult Function(String phoneNumber, String otpCode)
        submitToSignup,
    required TResult Function(bool isTapable, String phoneNumber)
        pressedResendOTP,
    required TResult Function(bool isTapable) countDownFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SubmitToLogin value) submitToLogin,
    required TResult Function(SubmitToSignup value) submitToSignup,
    required TResult Function(PressResendOTP value) pressedResendOTP,
    required TResult Function(CountDownFinish value) countDownFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPEventCopyWith<$Res> {
  factory $OTPEventCopyWith(OTPEvent value, $Res Function(OTPEvent) then) =
      _$OTPEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OTPEventCopyWithImpl<$Res> implements $OTPEventCopyWith<$Res> {
  _$OTPEventCopyWithImpl(this._value, this._then);

  final OTPEvent _value;
  // ignore: unused_field
  final $Res Function(OTPEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  $Res call({bool isTapable});
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
    Object? isTapable = freezed,
  }) {
    return _then(_$Started(
      isTapable: isTapable == freezed
          ? _value.isTapable
          : isTapable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started({required this.isTapable});

  @override
  final bool isTapable;

  @override
  String toString() {
    return 'OTPEvent.started(isTapable: $isTapable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other.isTapable, isTapable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isTapable));

  @JsonKey(ignore: true)
  @override
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTapable) started,
    required TResult Function(String phoneNumber, String otpCode) submitToLogin,
    required TResult Function(String phoneNumber, String otpCode)
        submitToSignup,
    required TResult Function(bool isTapable, String phoneNumber)
        pressedResendOTP,
    required TResult Function(bool isTapable) countDownFinish,
  }) {
    return started(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
  }) {
    return started?.call(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isTapable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SubmitToLogin value) submitToLogin,
    required TResult Function(SubmitToSignup value) submitToSignup,
    required TResult Function(PressResendOTP value) pressedResendOTP,
    required TResult Function(CountDownFinish value) countDownFinish,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements OTPEvent {
  const factory Started({required final bool isTapable}) = _$Started;

  bool get isTapable;
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitToLoginCopyWith<$Res> {
  factory _$$SubmitToLoginCopyWith(
          _$SubmitToLogin value, $Res Function(_$SubmitToLogin) then) =
      __$$SubmitToLoginCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String otpCode});
}

/// @nodoc
class __$$SubmitToLoginCopyWithImpl<$Res> extends _$OTPEventCopyWithImpl<$Res>
    implements _$$SubmitToLoginCopyWith<$Res> {
  __$$SubmitToLoginCopyWithImpl(
      _$SubmitToLogin _value, $Res Function(_$SubmitToLogin) _then)
      : super(_value, (v) => _then(v as _$SubmitToLogin));

  @override
  _$SubmitToLogin get _value => super._value as _$SubmitToLogin;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otpCode = freezed,
  }) {
    return _then(_$SubmitToLogin(
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

class _$SubmitToLogin implements SubmitToLogin {
  const _$SubmitToLogin({required this.phoneNumber, required this.otpCode});

  @override
  final String phoneNumber;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'OTPEvent.submitToLogin(phoneNumber: $phoneNumber, otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitToLogin &&
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
  _$$SubmitToLoginCopyWith<_$SubmitToLogin> get copyWith =>
      __$$SubmitToLoginCopyWithImpl<_$SubmitToLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTapable) started,
    required TResult Function(String phoneNumber, String otpCode) submitToLogin,
    required TResult Function(String phoneNumber, String otpCode)
        submitToSignup,
    required TResult Function(bool isTapable, String phoneNumber)
        pressedResendOTP,
    required TResult Function(bool isTapable) countDownFinish,
  }) {
    return submitToLogin(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
  }) {
    return submitToLogin?.call(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
    required TResult orElse(),
  }) {
    if (submitToLogin != null) {
      return submitToLogin(phoneNumber, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SubmitToLogin value) submitToLogin,
    required TResult Function(SubmitToSignup value) submitToSignup,
    required TResult Function(PressResendOTP value) pressedResendOTP,
    required TResult Function(CountDownFinish value) countDownFinish,
  }) {
    return submitToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
  }) {
    return submitToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
    required TResult orElse(),
  }) {
    if (submitToLogin != null) {
      return submitToLogin(this);
    }
    return orElse();
  }
}

abstract class SubmitToLogin implements OTPEvent {
  const factory SubmitToLogin(
      {required final String phoneNumber,
      required final String otpCode}) = _$SubmitToLogin;

  String get phoneNumber;
  String get otpCode;
  @JsonKey(ignore: true)
  _$$SubmitToLoginCopyWith<_$SubmitToLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitToSignupCopyWith<$Res> {
  factory _$$SubmitToSignupCopyWith(
          _$SubmitToSignup value, $Res Function(_$SubmitToSignup) then) =
      __$$SubmitToSignupCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String otpCode});
}

/// @nodoc
class __$$SubmitToSignupCopyWithImpl<$Res> extends _$OTPEventCopyWithImpl<$Res>
    implements _$$SubmitToSignupCopyWith<$Res> {
  __$$SubmitToSignupCopyWithImpl(
      _$SubmitToSignup _value, $Res Function(_$SubmitToSignup) _then)
      : super(_value, (v) => _then(v as _$SubmitToSignup));

  @override
  _$SubmitToSignup get _value => super._value as _$SubmitToSignup;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? otpCode = freezed,
  }) {
    return _then(_$SubmitToSignup(
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

class _$SubmitToSignup implements SubmitToSignup {
  const _$SubmitToSignup({required this.phoneNumber, required this.otpCode});

  @override
  final String phoneNumber;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'OTPEvent.submitToSignup(phoneNumber: $phoneNumber, otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitToSignup &&
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
  _$$SubmitToSignupCopyWith<_$SubmitToSignup> get copyWith =>
      __$$SubmitToSignupCopyWithImpl<_$SubmitToSignup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTapable) started,
    required TResult Function(String phoneNumber, String otpCode) submitToLogin,
    required TResult Function(String phoneNumber, String otpCode)
        submitToSignup,
    required TResult Function(bool isTapable, String phoneNumber)
        pressedResendOTP,
    required TResult Function(bool isTapable) countDownFinish,
  }) {
    return submitToSignup(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
  }) {
    return submitToSignup?.call(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
    required TResult orElse(),
  }) {
    if (submitToSignup != null) {
      return submitToSignup(phoneNumber, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SubmitToLogin value) submitToLogin,
    required TResult Function(SubmitToSignup value) submitToSignup,
    required TResult Function(PressResendOTP value) pressedResendOTP,
    required TResult Function(CountDownFinish value) countDownFinish,
  }) {
    return submitToSignup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
  }) {
    return submitToSignup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
    required TResult orElse(),
  }) {
    if (submitToSignup != null) {
      return submitToSignup(this);
    }
    return orElse();
  }
}

abstract class SubmitToSignup implements OTPEvent {
  const factory SubmitToSignup(
      {required final String phoneNumber,
      required final String otpCode}) = _$SubmitToSignup;

  String get phoneNumber;
  String get otpCode;
  @JsonKey(ignore: true)
  _$$SubmitToSignupCopyWith<_$SubmitToSignup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PressResendOTPCopyWith<$Res> {
  factory _$$PressResendOTPCopyWith(
          _$PressResendOTP value, $Res Function(_$PressResendOTP) then) =
      __$$PressResendOTPCopyWithImpl<$Res>;
  $Res call({bool isTapable, String phoneNumber});
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
    Object? isTapable = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$PressResendOTP(
      isTapable: isTapable == freezed
          ? _value.isTapable
          : isTapable // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PressResendOTP implements PressResendOTP {
  const _$PressResendOTP({required this.isTapable, required this.phoneNumber});

  @override
  final bool isTapable;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OTPEvent.pressedResendOTP(isTapable: $isTapable, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PressResendOTP &&
            const DeepCollectionEquality().equals(other.isTapable, isTapable) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isTapable),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$PressResendOTPCopyWith<_$PressResendOTP> get copyWith =>
      __$$PressResendOTPCopyWithImpl<_$PressResendOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTapable) started,
    required TResult Function(String phoneNumber, String otpCode) submitToLogin,
    required TResult Function(String phoneNumber, String otpCode)
        submitToSignup,
    required TResult Function(bool isTapable, String phoneNumber)
        pressedResendOTP,
    required TResult Function(bool isTapable) countDownFinish,
  }) {
    return pressedResendOTP(isTapable, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
  }) {
    return pressedResendOTP?.call(isTapable, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
    required TResult orElse(),
  }) {
    if (pressedResendOTP != null) {
      return pressedResendOTP(isTapable, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SubmitToLogin value) submitToLogin,
    required TResult Function(SubmitToSignup value) submitToSignup,
    required TResult Function(PressResendOTP value) pressedResendOTP,
    required TResult Function(CountDownFinish value) countDownFinish,
  }) {
    return pressedResendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
  }) {
    return pressedResendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
    required TResult orElse(),
  }) {
    if (pressedResendOTP != null) {
      return pressedResendOTP(this);
    }
    return orElse();
  }
}

abstract class PressResendOTP implements OTPEvent {
  const factory PressResendOTP(
      {required final bool isTapable,
      required final String phoneNumber}) = _$PressResendOTP;

  bool get isTapable;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PressResendOTPCopyWith<_$PressResendOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountDownFinishCopyWith<$Res> {
  factory _$$CountDownFinishCopyWith(
          _$CountDownFinish value, $Res Function(_$CountDownFinish) then) =
      __$$CountDownFinishCopyWithImpl<$Res>;
  $Res call({bool isTapable});
}

/// @nodoc
class __$$CountDownFinishCopyWithImpl<$Res> extends _$OTPEventCopyWithImpl<$Res>
    implements _$$CountDownFinishCopyWith<$Res> {
  __$$CountDownFinishCopyWithImpl(
      _$CountDownFinish _value, $Res Function(_$CountDownFinish) _then)
      : super(_value, (v) => _then(v as _$CountDownFinish));

  @override
  _$CountDownFinish get _value => super._value as _$CountDownFinish;

  @override
  $Res call({
    Object? isTapable = freezed,
  }) {
    return _then(_$CountDownFinish(
      isTapable: isTapable == freezed
          ? _value.isTapable
          : isTapable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CountDownFinish implements CountDownFinish {
  const _$CountDownFinish({required this.isTapable});

  @override
  final bool isTapable;

  @override
  String toString() {
    return 'OTPEvent.countDownFinish(isTapable: $isTapable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountDownFinish &&
            const DeepCollectionEquality().equals(other.isTapable, isTapable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isTapable));

  @JsonKey(ignore: true)
  @override
  _$$CountDownFinishCopyWith<_$CountDownFinish> get copyWith =>
      __$$CountDownFinishCopyWithImpl<_$CountDownFinish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isTapable) started,
    required TResult Function(String phoneNumber, String otpCode) submitToLogin,
    required TResult Function(String phoneNumber, String otpCode)
        submitToSignup,
    required TResult Function(bool isTapable, String phoneNumber)
        pressedResendOTP,
    required TResult Function(bool isTapable) countDownFinish,
  }) {
    return countDownFinish(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
  }) {
    return countDownFinish?.call(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isTapable)? started,
    TResult Function(String phoneNumber, String otpCode)? submitToLogin,
    TResult Function(String phoneNumber, String otpCode)? submitToSignup,
    TResult Function(bool isTapable, String phoneNumber)? pressedResendOTP,
    TResult Function(bool isTapable)? countDownFinish,
    required TResult orElse(),
  }) {
    if (countDownFinish != null) {
      return countDownFinish(isTapable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SubmitToLogin value) submitToLogin,
    required TResult Function(SubmitToSignup value) submitToSignup,
    required TResult Function(PressResendOTP value) pressedResendOTP,
    required TResult Function(CountDownFinish value) countDownFinish,
  }) {
    return countDownFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
  }) {
    return countDownFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SubmitToLogin value)? submitToLogin,
    TResult Function(SubmitToSignup value)? submitToSignup,
    TResult Function(PressResendOTP value)? pressedResendOTP,
    TResult Function(CountDownFinish value)? countDownFinish,
    required TResult orElse(),
  }) {
    if (countDownFinish != null) {
      return countDownFinish(this);
    }
    return orElse();
  }
}

abstract class CountDownFinish implements OTPEvent {
  const factory CountDownFinish({required final bool isTapable}) =
      _$CountDownFinish;

  bool get isTapable;
  @JsonKey(ignore: true)
  _$$CountDownFinishCopyWith<_$CountDownFinish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OTPState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
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
  $Res call({String? phoneNumber, bool isTapable});
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
    Object? isTapable = freezed,
  }) {
    return _then(_$_Initial(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isTapable: isTapable == freezed
          ? _value.isTapable
          : isTapable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.phoneNumber, required this.isTapable});

  @override
  final String? phoneNumber;
  @override
  final bool isTapable;

  @override
  String toString() {
    return 'OTPState.initial(phoneNumber: $phoneNumber, isTapable: $isTapable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.isTapable, isTapable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(isTapable));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) {
    return initial(phoneNumber, isTapable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) {
    return initial?.call(phoneNumber, isTapable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(phoneNumber, isTapable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
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
  const factory _Initial(
      {final String? phoneNumber, required final bool isTapable}) = _$_Initial;

  String? get phoneNumber;
  bool get isTapable;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessToLoginCopyWith<$Res> {
  factory _$$_SuccessToLoginCopyWith(
          _$_SuccessToLogin value, $Res Function(_$_SuccessToLogin) then) =
      __$$_SuccessToLoginCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String credentials});
}

/// @nodoc
class __$$_SuccessToLoginCopyWithImpl<$Res> extends _$OTPStateCopyWithImpl<$Res>
    implements _$$_SuccessToLoginCopyWith<$Res> {
  __$$_SuccessToLoginCopyWithImpl(
      _$_SuccessToLogin _value, $Res Function(_$_SuccessToLogin) _then)
      : super(_value, (v) => _then(v as _$_SuccessToLogin));

  @override
  _$_SuccessToLogin get _value => super._value as _$_SuccessToLogin;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? credentials = freezed,
  }) {
    return _then(_$_SuccessToLogin(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      credentials: credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessToLogin implements _SuccessToLogin {
  const _$_SuccessToLogin(
      {required this.phoneNumber, required this.credentials});

  @override
  final String phoneNumber;
  @override
  final String credentials;

  @override
  String toString() {
    return 'OTPState.successToLogin(phoneNumber: $phoneNumber, credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessToLogin &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.credentials, credentials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(credentials));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessToLoginCopyWith<_$_SuccessToLogin> get copyWith =>
      __$$_SuccessToLoginCopyWithImpl<_$_SuccessToLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) {
    return successToLogin(phoneNumber, credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) {
    return successToLogin?.call(phoneNumber, credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
    required TResult orElse(),
  }) {
    if (successToLogin != null) {
      return successToLogin(phoneNumber, credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) {
    return successToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) {
    return successToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (successToLogin != null) {
      return successToLogin(this);
    }
    return orElse();
  }
}

abstract class _SuccessToLogin implements OTPState {
  const factory _SuccessToLogin(
      {required final String phoneNumber,
      required final String credentials}) = _$_SuccessToLogin;

  String get phoneNumber;
  String get credentials;
  @JsonKey(ignore: true)
  _$$_SuccessToLoginCopyWith<_$_SuccessToLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessToSignupCopyWith<$Res> {
  factory _$$_SuccessToSignupCopyWith(
          _$_SuccessToSignup value, $Res Function(_$_SuccessToSignup) then) =
      __$$_SuccessToSignupCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String credentials});
}

/// @nodoc
class __$$_SuccessToSignupCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res>
    implements _$$_SuccessToSignupCopyWith<$Res> {
  __$$_SuccessToSignupCopyWithImpl(
      _$_SuccessToSignup _value, $Res Function(_$_SuccessToSignup) _then)
      : super(_value, (v) => _then(v as _$_SuccessToSignup));

  @override
  _$_SuccessToSignup get _value => super._value as _$_SuccessToSignup;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? credentials = freezed,
  }) {
    return _then(_$_SuccessToSignup(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      credentials: credentials == freezed
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessToSignup implements _SuccessToSignup {
  const _$_SuccessToSignup(
      {required this.phoneNumber, required this.credentials});

  @override
  final String phoneNumber;
  @override
  final String credentials;

  @override
  String toString() {
    return 'OTPState.successToSignup(phoneNumber: $phoneNumber, credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessToSignup &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.credentials, credentials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(credentials));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessToSignupCopyWith<_$_SuccessToSignup> get copyWith =>
      __$$_SuccessToSignupCopyWithImpl<_$_SuccessToSignup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) {
    return successToSignup(phoneNumber, credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) {
    return successToSignup?.call(phoneNumber, credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
    required TResult orElse(),
  }) {
    if (successToSignup != null) {
      return successToSignup(phoneNumber, credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) {
    return successToSignup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) {
    return successToSignup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (successToSignup != null) {
      return successToSignup(this);
    }
    return orElse();
  }
}

abstract class _SuccessToSignup implements OTPState {
  const factory _SuccessToSignup(
      {required final String phoneNumber,
      required final String credentials}) = _$_SuccessToSignup;

  String get phoneNumber;
  String get credentials;
  @JsonKey(ignore: true)
  _$$_SuccessToSignupCopyWith<_$_SuccessToSignup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  $Res call({bool isTapable});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res> extends _$OTPStateCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;

  @override
  $Res call({
    Object? isTapable = freezed,
  }) {
    return _then(_$_Ready(
      isTapable: isTapable == freezed
          ? _value.isTapable
          : isTapable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready({required this.isTapable});

  @override
  final bool isTapable;

  @override
  String toString() {
    return 'OTPState.ready(isTapable: $isTapable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready &&
            const DeepCollectionEquality().equals(other.isTapable, isTapable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isTapable));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) {
    return ready(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) {
    return ready?.call(isTapable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(isTapable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements OTPState {
  const factory _Ready({required final bool isTapable}) = _$_Ready;

  bool get isTapable;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({bool hasError});
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
    Object? hasError = freezed,
  }) {
    return _then(_$_Failure(
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.hasError});

  @override
  final bool hasError;

  @override
  String toString() {
    return 'OTPState.failure(hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) {
    return failure(hasError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) {
    return failure?.call(hasError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(hasError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
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
  const factory _Failure({required final bool hasError}) = _$_Failure;

  bool get hasError;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$OTPStateCopyWithImpl<$Res>
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
    return 'OTPState.loading()';
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
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
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
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OTPState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ResendCopyWith<$Res> {
  factory _$$_ResendCopyWith(_$_Resend value, $Res Function(_$_Resend) then) =
      __$$_ResendCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
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
  }) {
    return _then(_$_Resend(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Resend implements _Resend {
  const _$_Resend({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OTPState.resend(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Resend &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_ResendCopyWith<_$_Resend> get copyWith =>
      __$$_ResendCopyWithImpl<_$_Resend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phoneNumber, bool isTapable) initial,
    required TResult Function(String phoneNumber, String credentials)
        successToLogin,
    required TResult Function(String phoneNumber, String credentials)
        successToSignup,
    required TResult Function(bool isTapable) ready,
    required TResult Function(bool hasError) failure,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) resend,
  }) {
    return resend(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
  }) {
    return resend?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phoneNumber, bool isTapable)? initial,
    TResult Function(String phoneNumber, String credentials)? successToLogin,
    TResult Function(String phoneNumber, String credentials)? successToSignup,
    TResult Function(bool isTapable)? ready,
    TResult Function(bool hasError)? failure,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SuccessToLogin value) successToLogin,
    required TResult Function(_SuccessToSignup value) successToSignup,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Resend value) resend,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    TResult Function(_Resend value)? resend,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SuccessToLogin value)? successToLogin,
    TResult Function(_SuccessToSignup value)? successToSignup,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
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
  const factory _Resend({required final String phoneNumber}) = _$_Resend;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_ResendCopyWith<_$_Resend> get copyWith =>
      throw _privateConstructorUsedError;
}
