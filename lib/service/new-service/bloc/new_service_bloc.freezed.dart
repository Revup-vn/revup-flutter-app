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
    required TResult Function() imageFromGallerySelected,
    required TResult Function() photoWithCameraSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(ImageFromGallerySelected value)
        imageFromGallerySelected,
    required TResult Function(PhotoWithCameraSelected value)
        photoWithCameraSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
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
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$NewServiceEventCopyWithImpl<$Res>
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
    return 'NewServiceEvent.started()';
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
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function() imageFromGallerySelected,
    required TResult Function() photoWithCameraSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
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
    required TResult Function(Submitted value) submitted,
    required TResult Function(ImageFromGallerySelected value)
        imageFromGallerySelected,
    required TResult Function(PhotoWithCameraSelected value)
        photoWithCameraSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements NewServiceEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$SubmittedCopyWith<$Res> {
  factory _$$SubmittedCopyWith(
          _$Submitted value, $Res Function(_$Submitted) then) =
      __$$SubmittedCopyWithImpl<$Res>;
  $Res call({ServiceData serviceData});

  $ServiceDataCopyWith<$Res> get serviceData;
}

/// @nodoc
class __$$SubmittedCopyWithImpl<$Res>
    extends _$NewServiceEventCopyWithImpl<$Res>
    implements _$$SubmittedCopyWith<$Res> {
  __$$SubmittedCopyWithImpl(
      _$Submitted _value, $Res Function(_$Submitted) _then)
      : super(_value, (v) => _then(v as _$Submitted));

  @override
  _$Submitted get _value => super._value as _$Submitted;

  @override
  $Res call({
    Object? serviceData = freezed,
  }) {
    return _then(_$Submitted(
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

class _$Submitted implements Submitted {
  const _$Submitted(this.serviceData);

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
            other is _$Submitted &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceData));

  @JsonKey(ignore: true)
  @override
  _$$SubmittedCopyWith<_$Submitted> get copyWith =>
      __$$SubmittedCopyWithImpl<_$Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function() imageFromGallerySelected,
    required TResult Function() photoWithCameraSelected,
  }) {
    return submitted(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
  }) {
    return submitted?.call(serviceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
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
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(ImageFromGallerySelected value)
        imageFromGallerySelected,
    required TResult Function(PhotoWithCameraSelected value)
        photoWithCameraSelected,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements NewServiceEvent {
  const factory Submitted(final ServiceData serviceData) = _$Submitted;

  ServiceData get serviceData;
  @JsonKey(ignore: true)
  _$$SubmittedCopyWith<_$Submitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageFromGallerySelectedCopyWith<$Res> {
  factory _$$ImageFromGallerySelectedCopyWith(_$ImageFromGallerySelected value,
          $Res Function(_$ImageFromGallerySelected) then) =
      __$$ImageFromGallerySelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageFromGallerySelectedCopyWithImpl<$Res>
    extends _$NewServiceEventCopyWithImpl<$Res>
    implements _$$ImageFromGallerySelectedCopyWith<$Res> {
  __$$ImageFromGallerySelectedCopyWithImpl(_$ImageFromGallerySelected _value,
      $Res Function(_$ImageFromGallerySelected) _then)
      : super(_value, (v) => _then(v as _$ImageFromGallerySelected));

  @override
  _$ImageFromGallerySelected get _value =>
      super._value as _$ImageFromGallerySelected;
}

/// @nodoc

class _$ImageFromGallerySelected implements ImageFromGallerySelected {
  const _$ImageFromGallerySelected();

  @override
  String toString() {
    return 'NewServiceEvent.imageFromGallerySelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFromGallerySelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function() imageFromGallerySelected,
    required TResult Function() photoWithCameraSelected,
  }) {
    return imageFromGallerySelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
  }) {
    return imageFromGallerySelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
    required TResult orElse(),
  }) {
    if (imageFromGallerySelected != null) {
      return imageFromGallerySelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(ImageFromGallerySelected value)
        imageFromGallerySelected,
    required TResult Function(PhotoWithCameraSelected value)
        photoWithCameraSelected,
  }) {
    return imageFromGallerySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
  }) {
    return imageFromGallerySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
    required TResult orElse(),
  }) {
    if (imageFromGallerySelected != null) {
      return imageFromGallerySelected(this);
    }
    return orElse();
  }
}

abstract class ImageFromGallerySelected implements NewServiceEvent {
  const factory ImageFromGallerySelected() = _$ImageFromGallerySelected;
}

/// @nodoc
abstract class _$$PhotoWithCameraSelectedCopyWith<$Res> {
  factory _$$PhotoWithCameraSelectedCopyWith(_$PhotoWithCameraSelected value,
          $Res Function(_$PhotoWithCameraSelected) then) =
      __$$PhotoWithCameraSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotoWithCameraSelectedCopyWithImpl<$Res>
    extends _$NewServiceEventCopyWithImpl<$Res>
    implements _$$PhotoWithCameraSelectedCopyWith<$Res> {
  __$$PhotoWithCameraSelectedCopyWithImpl(_$PhotoWithCameraSelected _value,
      $Res Function(_$PhotoWithCameraSelected) _then)
      : super(_value, (v) => _then(v as _$PhotoWithCameraSelected));

  @override
  _$PhotoWithCameraSelected get _value =>
      super._value as _$PhotoWithCameraSelected;
}

/// @nodoc

class _$PhotoWithCameraSelected implements PhotoWithCameraSelected {
  const _$PhotoWithCameraSelected();

  @override
  String toString() {
    return 'NewServiceEvent.photoWithCameraSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoWithCameraSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ServiceData serviceData) submitted,
    required TResult Function() imageFromGallerySelected,
    required TResult Function() photoWithCameraSelected,
  }) {
    return photoWithCameraSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
  }) {
    return photoWithCameraSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ServiceData serviceData)? submitted,
    TResult Function()? imageFromGallerySelected,
    TResult Function()? photoWithCameraSelected,
    required TResult orElse(),
  }) {
    if (photoWithCameraSelected != null) {
      return photoWithCameraSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(ImageFromGallerySelected value)
        imageFromGallerySelected,
    required TResult Function(PhotoWithCameraSelected value)
        photoWithCameraSelected,
  }) {
    return photoWithCameraSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
  }) {
    return photoWithCameraSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(ImageFromGallerySelected value)? imageFromGallerySelected,
    TResult Function(PhotoWithCameraSelected value)? photoWithCameraSelected,
    required TResult orElse(),
  }) {
    if (photoWithCameraSelected != null) {
      return photoWithCameraSelected(this);
    }
    return orElse();
  }
}

abstract class PhotoWithCameraSelected implements NewServiceEvent {
  const factory PhotoWithCameraSelected() = _$PhotoWithCameraSelected;
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
