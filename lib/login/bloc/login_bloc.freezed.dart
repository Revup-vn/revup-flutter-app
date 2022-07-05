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
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(SignInWithPhoneNumberPressed value)
        signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(SignInWithPhoneNumberPressed value)?
        signInWithPhoneNumberPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(SignInWithPhoneNumberPressed value)?
        signInWithPhoneNumberPressed,
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
abstract class _$$PhoneNumberChangedCopyWith<$Res> {
  factory _$$PhoneNumberChangedCopyWith(_$PhoneNumberChanged value,
          $Res Function(_$PhoneNumberChanged) then) =
      __$$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$PhoneNumberChangedCopyWith<$Res> {
  __$$PhoneNumberChangedCopyWithImpl(
      _$PhoneNumberChanged _value, $Res Function(_$PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _$PhoneNumberChanged));

  @override
  _$PhoneNumberChanged get _value => super._value as _$PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      __$$PhoneNumberChangedCopyWithImpl<_$PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(SignInWithPhoneNumberPressed value)
        signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(SignInWithPhoneNumberPressed value)?
        signInWithPhoneNumberPressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(SignInWithPhoneNumberPressed value)?
        signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements LoginEvent {
  const factory PhoneNumberChanged(final String phoneNumber) =
      _$PhoneNumberChanged;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedCopyWith<_$PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithPhoneNumberPressedCopyWith<$Res> {
  factory _$$SignInWithPhoneNumberPressedCopyWith(
          _$SignInWithPhoneNumberPressed value,
          $Res Function(_$SignInWithPhoneNumberPressed) then) =
      __$$SignInWithPhoneNumberPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithPhoneNumberPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$SignInWithPhoneNumberPressedCopyWith<$Res> {
  __$$SignInWithPhoneNumberPressedCopyWithImpl(
      _$SignInWithPhoneNumberPressed _value,
      $Res Function(_$SignInWithPhoneNumberPressed) _then)
      : super(_value, (v) => _then(v as _$SignInWithPhoneNumberPressed));

  @override
  _$SignInWithPhoneNumberPressed get _value =>
      super._value as _$SignInWithPhoneNumberPressed;
}

/// @nodoc

class _$SignInWithPhoneNumberPressed implements SignInWithPhoneNumberPressed {
  const _$SignInWithPhoneNumberPressed();

  @override
  String toString() {
    return 'LoginEvent.signInWithPhoneNumberPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithPhoneNumberPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
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
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(SignInWithPhoneNumberPressed value)
        signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(SignInWithPhoneNumberPressed value)?
        signInWithPhoneNumberPressed,
  }) {
    return signInWithPhoneNumberPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(SignInWithPhoneNumberPressed value)?
        signInWithPhoneNumberPressed,
    required TResult orElse(),
  }) {
    if (signInWithPhoneNumberPressed != null) {
      return signInWithPhoneNumberPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithPhoneNumberPressed implements LoginEvent {
  const factory SignInWithPhoneNumberPressed() = _$SignInWithPhoneNumberPressed;
}

/// @nodoc
mixin _$LoginState {
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isInitial => throw _privateConstructorUsedError;
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
      {String phoneNumber,
      bool isInitial,
      bool isLoginButtonEnabled,
      String errorMessage});
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
    Object? isInitial = freezed,
    Object? isLoginButtonEnabled = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {String phoneNumber,
      bool isInitial,
      bool isLoginButtonEnabled,
      String errorMessage});
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
    Object? isInitial = freezed,
    Object? isLoginButtonEnabled = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.isInitial,
      required this.isLoginButtonEnabled,
      required this.errorMessage});

  @override
  final String phoneNumber;
  @override
  final bool isInitial;
  @override
  final bool isLoginButtonEnabled;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, isInitial: $isInitial, isLoginButtonEnabled: $isLoginButtonEnabled, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.isInitial, isInitial) &&
            const DeepCollectionEquality()
                .equals(other.isLoginButtonEnabled, isLoginButtonEnabled) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(isInitial),
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
      required final bool isInitial,
      required final bool isLoginButtonEnabled,
      required final String errorMessage}) = _$_LoginState;

  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  bool get isInitial => throw _privateConstructorUsedError;
  @override
  bool get isLoginButtonEnabled => throw _privateConstructorUsedError;
  @override
  String get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
