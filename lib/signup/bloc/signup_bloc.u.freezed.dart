// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.u.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? imageUploadSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res> implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  final SignupEvent _value;
  // ignore: unused_field
  final $Res Function(SignupEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$SignupEventCopyWithImpl<$Res>
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
    return 'SignupEvent.started()';
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
    required TResult Function(ImageSource source) imageUploadSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? imageUploadSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? imageUploadSelected,
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
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignupEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ImageUploadSelectedCopyWith<$Res> {
  factory _$$_ImageUploadSelectedCopyWith(_$_ImageUploadSelected value,
          $Res Function(_$_ImageUploadSelected) then) =
      __$$_ImageUploadSelectedCopyWithImpl<$Res>;
  $Res call({ImageSource source});
}

/// @nodoc
class __$$_ImageUploadSelectedCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$$_ImageUploadSelectedCopyWith<$Res> {
  __$$_ImageUploadSelectedCopyWithImpl(_$_ImageUploadSelected _value,
      $Res Function(_$_ImageUploadSelected) _then)
      : super(_value, (v) => _then(v as _$_ImageUploadSelected));

  @override
  _$_ImageUploadSelected get _value => super._value as _$_ImageUploadSelected;

  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$_ImageUploadSelected(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_ImageUploadSelected implements _ImageUploadSelected {
  const _$_ImageUploadSelected({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'SignupEvent.imageUploadSelected(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUploadSelected &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$_ImageUploadSelectedCopyWith<_$_ImageUploadSelected> get copyWith =>
      __$$_ImageUploadSelectedCopyWithImpl<_$_ImageUploadSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ImageSource source) imageUploadSelected,
  }) {
    return imageUploadSelected(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? imageUploadSelected,
  }) {
    return imageUploadSelected?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ImageSource source)? imageUploadSelected,
    required TResult orElse(),
  }) {
    if (imageUploadSelected != null) {
      return imageUploadSelected(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
  }) {
    return imageUploadSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
  }) {
    return imageUploadSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    required TResult orElse(),
  }) {
    if (imageUploadSelected != null) {
      return imageUploadSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadSelected implements SignupEvent {
  const factory _ImageUploadSelected({required final ImageSource source}) =
      _$_ImageUploadSelected;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$_ImageUploadSelectedCopyWith<_$_ImageUploadSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File file) choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? choosePhotoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
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
    return 'SignupState.initial()';
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
    required TResult Function(File file) choosePhotoSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? choosePhotoSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? choosePhotoSuccess,
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
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignupState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ChoosePhotoSuccessCopyWith<$Res> {
  factory _$$_ChoosePhotoSuccessCopyWith(_$_ChoosePhotoSuccess value,
          $Res Function(_$_ChoosePhotoSuccess) then) =
      __$$_ChoosePhotoSuccessCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$$_ChoosePhotoSuccessCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res>
    implements _$$_ChoosePhotoSuccessCopyWith<$Res> {
  __$$_ChoosePhotoSuccessCopyWithImpl(
      _$_ChoosePhotoSuccess _value, $Res Function(_$_ChoosePhotoSuccess) _then)
      : super(_value, (v) => _then(v as _$_ChoosePhotoSuccess));

  @override
  _$_ChoosePhotoSuccess get _value => super._value as _$_ChoosePhotoSuccess;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_ChoosePhotoSuccess(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ChoosePhotoSuccess implements _ChoosePhotoSuccess {
  const _$_ChoosePhotoSuccess({required this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'SignupState.choosePhotoSuccess(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoosePhotoSuccess &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$$_ChoosePhotoSuccessCopyWith<_$_ChoosePhotoSuccess> get copyWith =>
      __$$_ChoosePhotoSuccessCopyWithImpl<_$_ChoosePhotoSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(File file) choosePhotoSuccess,
  }) {
    return choosePhotoSuccess(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? choosePhotoSuccess,
  }) {
    return choosePhotoSuccess?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(File file)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (choosePhotoSuccess != null) {
      return choosePhotoSuccess(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) {
    return choosePhotoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) {
    return choosePhotoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (choosePhotoSuccess != null) {
      return choosePhotoSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChoosePhotoSuccess implements SignupState {
  const factory _ChoosePhotoSuccess({required final File file}) =
      _$_ChoosePhotoSuccess;

  File get file;
  @JsonKey(ignore: true)
  _$$_ChoosePhotoSuccessCopyWith<_$_ChoosePhotoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
