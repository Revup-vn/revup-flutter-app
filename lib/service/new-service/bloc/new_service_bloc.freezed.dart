// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function(ImageSource source) imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function(ImageSource source)? imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function(ImageSource source)? imageUploadSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewServiceEventCopyWith<$Res> {
  factory $NewServiceEventCopyWith(
          NewServiceEvent value, $Res Function(NewServiceEvent) then) =
      _$NewServiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewServiceEventCopyWithImpl<$Res>
    implements $NewServiceEventCopyWith<$Res> {
  _$NewServiceEventCopyWithImpl(this._value, this._then);

  final NewServiceEvent _value;
  // ignore: unused_field
  final $Res Function(NewServiceEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$NewServiceEventCopyWithImpl<$Res>
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
    return 'NewServiceEvent.started()';
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
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function(ImageSource source) imageUploadSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function(ImageSource source)? imageUploadSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
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
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NewServiceEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
  $Res call({ServiceData serviceData});

  $ServiceDataCopyWith<$Res> get serviceData;
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$NewServiceEventCopyWithImpl<$Res>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, (v) => _then(v as _$_Submitted));

  @override
  _$_Submitted get _value => super._value as _$_Submitted;

  @override
  $Res call({
    Object? serviceData = freezed,
  }) {
    return _then(_$_Submitted(
      serviceData == freezed
          ? _value.serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as ServiceData,
    ));
  }

  @override
  $ServiceDataCopyWith<$Res> get serviceData {
    return $ServiceDataCopyWith<$Res>(_value.serviceData, (value) {
      return _then(_value.copyWith(serviceData: value));
    });
  }
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted(this.serviceData);

  @override
  final ServiceData serviceData;

  @override
  String toString() {
    return 'NewServiceEvent.submitted(serviceData: $serviceData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submitted &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceData));

  @JsonKey(ignore: true)
  @override
  _$$_SubmittedCopyWith<_$_Submitted> get copyWith =>
      __$$_SubmittedCopyWithImpl<_$_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function(ImageSource source) imageUploadSelected,
  }) {
    return submitted(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function(ImageSource source)? imageUploadSelected,
  }) {
    return submitted?.call(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function(ImageSource source)? imageUploadSelected,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(serviceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements NewServiceEvent {
  const factory _Submitted(final ServiceData serviceData) = _$_Submitted;

  ServiceData get serviceData;
  @JsonKey(ignore: true)
  _$$_SubmittedCopyWith<_$_Submitted> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$NewServiceEventCopyWithImpl<$Res>
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
      source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_ImageUploadSelected implements _ImageUploadSelected {
  const _$_ImageUploadSelected(this.source);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'NewServiceEvent.imageUploadSelected(source: $source)';
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
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function(ImageSource source) imageUploadSelected,
  }) {
    return imageUploadSelected(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function(ImageSource source)? imageUploadSelected,
  }) {
    return imageUploadSelected?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
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
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ImageUploadSelected value) imageUploadSelected,
  }) {
    return imageUploadSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
  }) {
    return imageUploadSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ImageUploadSelected value)? imageUploadSelected,
    required TResult orElse(),
  }) {
    if (imageUploadSelected != null) {
      return imageUploadSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadSelected implements NewServiceEvent {
  const factory _ImageUploadSelected(final ImageSource source) =
      _$_ImageUploadSelected;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$_ImageUploadSelectedCopyWith<_$_ImageUploadSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServiceData serviceData) success,
    required TResult Function(File image) choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewServiceStateCopyWith<$Res> {
  factory $NewServiceStateCopyWith(
          NewServiceState value, $Res Function(NewServiceState) then) =
      _$NewServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewServiceStateCopyWithImpl<$Res>
    implements $NewServiceStateCopyWith<$Res> {
  _$NewServiceStateCopyWithImpl(this._value, this._then);

  final NewServiceState _value;
  // ignore: unused_field
  final $Res Function(NewServiceState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$NewServiceStateCopyWithImpl<$Res>
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
    return 'NewServiceState.initial()';
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
    required TResult Function() loading,
    required TResult Function(ServiceData serviceData) success,
    required TResult Function(File image) choosePhotoSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewServiceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$NewServiceStateCopyWithImpl<$Res>
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
    return 'NewServiceState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServiceData serviceData) success,
    required TResult Function(File image) choosePhotoSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
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
    required TResult Function(_Success value) success,
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewServiceState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({ServiceData serviceData});

  $ServiceDataCopyWith<$Res> get serviceData;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$NewServiceStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? serviceData = freezed,
  }) {
    return _then(_$_Success(
      serviceData == freezed
          ? _value.serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as ServiceData,
    ));
  }

  @override
  $ServiceDataCopyWith<$Res> get serviceData {
    return $ServiceDataCopyWith<$Res>(_value.serviceData, (value) {
      return _then(_value.copyWith(serviceData: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.serviceData);

  @override
  final ServiceData serviceData;

  @override
  String toString() {
    return 'NewServiceState.success(serviceData: $serviceData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceData));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServiceData serviceData) success,
    required TResult Function(File image) choosePhotoSuccess,
  }) {
    return success(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
  }) {
    return success?.call(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(serviceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NewServiceState {
  const factory _Success(final ServiceData serviceData) = _$_Success;

  ServiceData get serviceData;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChoosePhotoSuccessCopyWith<$Res> {
  factory _$$_ChoosePhotoSuccessCopyWith(_$_ChoosePhotoSuccess value,
          $Res Function(_$_ChoosePhotoSuccess) then) =
      __$$_ChoosePhotoSuccessCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$$_ChoosePhotoSuccessCopyWithImpl<$Res>
    extends _$NewServiceStateCopyWithImpl<$Res>
    implements _$$_ChoosePhotoSuccessCopyWith<$Res> {
  __$$_ChoosePhotoSuccessCopyWithImpl(
      _$_ChoosePhotoSuccess _value, $Res Function(_$_ChoosePhotoSuccess) _then)
      : super(_value, (v) => _then(v as _$_ChoosePhotoSuccess));

  @override
  _$_ChoosePhotoSuccess get _value => super._value as _$_ChoosePhotoSuccess;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_ChoosePhotoSuccess(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ChoosePhotoSuccess implements _ChoosePhotoSuccess {
  const _$_ChoosePhotoSuccess(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'NewServiceState.choosePhotoSuccess(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoosePhotoSuccess &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_ChoosePhotoSuccessCopyWith<_$_ChoosePhotoSuccess> get copyWith =>
      __$$_ChoosePhotoSuccessCopyWithImpl<_$_ChoosePhotoSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServiceData serviceData) success,
    required TResult Function(File image) choosePhotoSuccess,
  }) {
    return choosePhotoSuccess(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
  }) {
    return choosePhotoSuccess?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServiceData serviceData)? success,
    TResult Function(File image)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (choosePhotoSuccess != null) {
      return choosePhotoSuccess(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ChoosePhotoSuccess value) choosePhotoSuccess,
  }) {
    return choosePhotoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
  }) {
    return choosePhotoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ChoosePhotoSuccess value)? choosePhotoSuccess,
    required TResult orElse(),
  }) {
    if (choosePhotoSuccess != null) {
      return choosePhotoSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChoosePhotoSuccess implements NewServiceState {
  const factory _ChoosePhotoSuccess(final File image) = _$_ChoosePhotoSuccess;

  File get image;
  @JsonKey(ignore: true)
  _$$_ChoosePhotoSuccessCopyWith<_$_ChoosePhotoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
