// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChangedIsValid,
    required TResult Function() phoneNumberChangedIsInvalid,
    required TResult Function() signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedIsValid value)
        phoneNumberChangedIsValid,
    required TResult Function(PhoneNumberChangedIsInvalid value)
        phoneNumberChangedIsInvalid,
    required TResult Function(_PhoneNumberSignIn value)
        signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$PhoneNumberChangedIsValidCopyWith<$Res> {
  factory _$$PhoneNumberChangedIsValidCopyWith(
          _$PhoneNumberChangedIsValid value,
          $Res Function(_$PhoneNumberChangedIsValid) then) =
      __$$PhoneNumberChangedIsValidCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedIsValidCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$PhoneNumberChangedIsValidCopyWith<$Res> {
  __$$PhoneNumberChangedIsValidCopyWithImpl(_$PhoneNumberChangedIsValid _value,
      $Res Function(_$PhoneNumberChangedIsValid) _then)
      : super(_value, (v) => _then(v as _$PhoneNumberChangedIsValid));

  @override
  _$PhoneNumberChangedIsValid get _value =>
      super._value as _$PhoneNumberChangedIsValid;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$PhoneNumberChangedIsValid(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedIsValid implements PhoneNumberChangedIsValid {
  const _$PhoneNumberChangedIsValid(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChangedIsValid(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedIsValid &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$PhoneNumberChangedIsValidCopyWith<_$PhoneNumberChangedIsValid>
      get copyWith => __$$PhoneNumberChangedIsValidCopyWithImpl<
          _$PhoneNumberChangedIsValid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChangedIsValid,
    required TResult Function() phoneNumberChangedIsInvalid,
    required TResult Function() signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsValid(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsValid?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChangedIsValid != null) {
      return phoneNumberChangedIsValid(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedIsValid value)
        phoneNumberChangedIsValid,
    required TResult Function(PhoneNumberChangedIsInvalid value)
        phoneNumberChangedIsInvalid,
    required TResult Function(_PhoneNumberSignIn value)
        signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChangedIsValid != null) {
      return phoneNumberChangedIsValid(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChangedIsValid implements LoginEvent {
  const factory PhoneNumberChangedIsValid(final String phoneNumber) =
      _$PhoneNumberChangedIsValid;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedIsValidCopyWith<_$PhoneNumberChangedIsValid>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedIsInvalidCopyWith<$Res> {
  factory _$$PhoneNumberChangedIsInvalidCopyWith(
          _$PhoneNumberChangedIsInvalid value,
          $Res Function(_$PhoneNumberChangedIsInvalid) then) =
      __$$PhoneNumberChangedIsInvalidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhoneNumberChangedIsInvalidCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$PhoneNumberChangedIsInvalidCopyWith<$Res> {
  __$$PhoneNumberChangedIsInvalidCopyWithImpl(
      _$PhoneNumberChangedIsInvalid _value,
      $Res Function(_$PhoneNumberChangedIsInvalid) _then)
      : super(_value, (v) => _then(v as _$PhoneNumberChangedIsInvalid));

  @override
  _$PhoneNumberChangedIsInvalid get _value =>
      super._value as _$PhoneNumberChangedIsInvalid;
}

/// @nodoc

class _$PhoneNumberChangedIsInvalid implements PhoneNumberChangedIsInvalid {
  const _$PhoneNumberChangedIsInvalid();

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChangedIsInvalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedIsInvalid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChangedIsValid,
    required TResult Function() phoneNumberChangedIsInvalid,
    required TResult Function() signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsInvalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsInvalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChangedIsInvalid != null) {
      return phoneNumberChangedIsInvalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedIsValid value)
        phoneNumberChangedIsValid,
    required TResult Function(PhoneNumberChangedIsInvalid value)
        phoneNumberChangedIsInvalid,
    required TResult Function(_PhoneNumberSignIn value)
        signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChangedIsInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChangedIsInvalid != null) {
      return phoneNumberChangedIsInvalid(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChangedIsInvalid implements LoginEvent {
  const factory PhoneNumberChangedIsInvalid() = _$PhoneNumberChangedIsInvalid;
}

/// @nodoc
abstract class _$$_PhoneNumberSignInCopyWith<$Res> {
  factory _$$_PhoneNumberSignInCopyWith(_$_PhoneNumberSignIn value,
          $Res Function(_$_PhoneNumberSignIn) then) =
      __$$_PhoneNumberSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhoneNumberSignInCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_PhoneNumberSignInCopyWith<$Res> {
  __$$_PhoneNumberSignInCopyWithImpl(
      _$_PhoneNumberSignIn _value, $Res Function(_$_PhoneNumberSignIn) _then)
      : super(_value, (v) => _then(v as _$_PhoneNumberSignIn));

  @override
  _$_PhoneNumberSignIn get _value => super._value as _$_PhoneNumberSignIn;
}

/// @nodoc

class _$_PhoneNumberSignIn implements _PhoneNumberSignIn {
  const _$_PhoneNumberSignIn();

  @override
  String toString() {
    return 'LoginEvent.signInWithPhoneNumberPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhoneNumberSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChangedIsValid,
    required TResult Function() phoneNumberChangedIsInvalid,
    required TResult Function() signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChangedIsValid,
    TResult Function()? phoneNumberChangedIsInvalid,
    TResult Function()? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumberPressed != null) {
      return signInWithPhoneNumberPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedIsValid value)
        phoneNumberChangedIsValid,
    required TResult Function(PhoneNumberChangedIsInvalid value)
        phoneNumberChangedIsInvalid,
    required TResult Function(_PhoneNumberSignIn value)
        signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedIsValid value)?
        phoneNumberChangedIsValid,
    TResult Function(PhoneNumberChangedIsInvalid value)?
        phoneNumberChangedIsInvalid,
    TResult Function(_PhoneNumberSignIn value)? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumberPressed != null) {
      return signInWithPhoneNumberPressed(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberSignIn implements LoginEvent {
  const factory _PhoneNumberSignIn() = _$_PhoneNumberSignIn;
}

/// @nodoc
mixin _$LoginState {
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isLoginButtonEnabled => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber, bool isLoginButtonEnabled, String errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? isLoginButtonEnabled = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoginButtonEnabled: isLoginButtonEnabled == freezed
          ? _value.isLoginButtonEnabled
          : isLoginButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phoneNumber, bool isLoginButtonEnabled, String errorMessage});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? isLoginButtonEnabled = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoginButtonEnabled: isLoginButtonEnabled == freezed
          ? _value.isLoginButtonEnabled
          : isLoginButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.phoneNumber,
      required this.isLoginButtonEnabled,
      required this.errorMessage});

  @override
  final String phoneNumber;
  @override
  final bool isLoginButtonEnabled;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, isLoginButtonEnabled: $isLoginButtonEnabled, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.isLoginButtonEnabled, isLoginButtonEnabled) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(isLoginButtonEnabled),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final String phoneNumber,
      required final bool isLoginButtonEnabled,
      required final String errorMessage}) = _$_LoginState;

  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  bool get isLoginButtonEnabled => throw _privateConstructorUsedError;
  @override
  String get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
