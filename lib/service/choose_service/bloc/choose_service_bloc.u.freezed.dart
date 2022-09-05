// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choose_service_bloc.u.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChooseServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OptionalService> newService) started,
    required TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)
        serviceListSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)?
        serviceListSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)?
        serviceListSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseServiceEventCopyWith<$Res> {
  factory $ChooseServiceEventCopyWith(
          ChooseServiceEvent value, $Res Function(ChooseServiceEvent) then) =
      _$ChooseServiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChooseServiceEventCopyWithImpl<$Res>
    implements $ChooseServiceEventCopyWith<$Res> {
  _$ChooseServiceEventCopyWithImpl(this._value, this._then);

  final ChooseServiceEvent _value;
  // ignore: unused_field
  final $Res Function(ChooseServiceEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({List<OptionalService> newService});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? newService = freezed,
  }) {
    return _then(_$_Started(
      newService: newService == freezed
          ? _value._newService
          : newService // ignore: cast_nullable_to_non_nullable
              as List<OptionalService>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required final List<OptionalService> newService})
      : _newService = newService;

  final List<OptionalService> _newService;
  @override
  List<OptionalService> get newService {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newService);
  }

  @override
  String toString() {
    return 'ChooseServiceEvent.started(newService: $newService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other._newService, _newService));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_newService));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OptionalService> newService) started,
    required TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)
        serviceListSubmitted,
  }) {
    return started(newService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)?
        serviceListSubmitted,
  }) {
    return started?.call(newService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)?
        serviceListSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(newService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChooseServiceEvent {
  const factory _Started({required final List<OptionalService> newService}) =
      _$_Started;

  List<OptionalService> get newService;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServiceListSubmittedCopyWith<$Res> {
  factory _$$_ServiceListSubmittedCopyWith(_$_ServiceListSubmitted value,
          $Res Function(_$_ServiceListSubmitted) then) =
      __$$_ServiceListSubmittedCopyWithImpl<$Res>;
  $Res call(
      {Function1<String, void> onRouteToTimeOut,
      Function2<String, String, void> sendMessage,
      List<ServiceData> saveLst,
      Function0<void> onPopBack});
}

/// @nodoc
class __$$_ServiceListSubmittedCopyWithImpl<$Res>
    extends _$ChooseServiceEventCopyWithImpl<$Res>
    implements _$$_ServiceListSubmittedCopyWith<$Res> {
  __$$_ServiceListSubmittedCopyWithImpl(_$_ServiceListSubmitted _value,
      $Res Function(_$_ServiceListSubmitted) _then)
      : super(_value, (v) => _then(v as _$_ServiceListSubmitted));

  @override
  _$_ServiceListSubmitted get _value => super._value as _$_ServiceListSubmitted;

  @override
  $Res call({
    Object? onRouteToTimeOut = freezed,
    Object? sendMessage = freezed,
    Object? saveLst = freezed,
    Object? onPopBack = freezed,
  }) {
    return _then(_$_ServiceListSubmitted(
      onRouteToTimeOut: onRouteToTimeOut == freezed
          ? _value.onRouteToTimeOut
          : onRouteToTimeOut // ignore: cast_nullable_to_non_nullable
              as Function1<String, void>,
      sendMessage: sendMessage == freezed
          ? _value.sendMessage
          : sendMessage // ignore: cast_nullable_to_non_nullable
              as Function2<String, String, void>,
      saveLst: saveLst == freezed
          ? _value._saveLst
          : saveLst // ignore: cast_nullable_to_non_nullable
              as List<ServiceData>,
      onPopBack: onPopBack == freezed
          ? _value.onPopBack
          : onPopBack // ignore: cast_nullable_to_non_nullable
              as Function0<void>,
    ));
  }
}

/// @nodoc

class _$_ServiceListSubmitted implements _ServiceListSubmitted {
  const _$_ServiceListSubmitted(
      {required this.onRouteToTimeOut,
      required this.sendMessage,
      required final List<ServiceData> saveLst,
      required this.onPopBack})
      : _saveLst = saveLst;

  @override
  final Function1<String, void> onRouteToTimeOut;
  @override
  final Function2<String, String, void> sendMessage;
  final List<ServiceData> _saveLst;
  @override
  List<ServiceData> get saveLst {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saveLst);
  }

  @override
  final Function0<void> onPopBack;

  @override
  String toString() {
    return 'ChooseServiceEvent.serviceListSubmitted(onRouteToTimeOut: $onRouteToTimeOut, sendMessage: $sendMessage, saveLst: $saveLst, onPopBack: $onPopBack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceListSubmitted &&
            (identical(other.onRouteToTimeOut, onRouteToTimeOut) ||
                other.onRouteToTimeOut == onRouteToTimeOut) &&
            (identical(other.sendMessage, sendMessage) ||
                other.sendMessage == sendMessage) &&
            const DeepCollectionEquality().equals(other._saveLst, _saveLst) &&
            (identical(other.onPopBack, onPopBack) ||
                other.onPopBack == onPopBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onRouteToTimeOut, sendMessage,
      const DeepCollectionEquality().hash(_saveLst), onPopBack);

  @JsonKey(ignore: true)
  @override
  _$$_ServiceListSubmittedCopyWith<_$_ServiceListSubmitted> get copyWith =>
      __$$_ServiceListSubmittedCopyWithImpl<_$_ServiceListSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OptionalService> newService) started,
    required TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)
        serviceListSubmitted,
  }) {
    return serviceListSubmitted(
        onRouteToTimeOut, sendMessage, saveLst, onPopBack);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)?
        serviceListSubmitted,
  }) {
    return serviceListSubmitted?.call(
        onRouteToTimeOut, sendMessage, saveLst, onPopBack);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack)?
        serviceListSubmitted,
    required TResult orElse(),
  }) {
    if (serviceListSubmitted != null) {
      return serviceListSubmitted(
          onRouteToTimeOut, sendMessage, saveLst, onPopBack);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ServiceListSubmitted value) serviceListSubmitted,
  }) {
    return serviceListSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
  }) {
    return serviceListSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ServiceListSubmitted value)? serviceListSubmitted,
    required TResult orElse(),
  }) {
    if (serviceListSubmitted != null) {
      return serviceListSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ServiceListSubmitted implements ChooseServiceEvent {
  const factory _ServiceListSubmitted(
      {required final Function1<String, void> onRouteToTimeOut,
      required final Function2<String, String, void> sendMessage,
      required final List<ServiceData> saveLst,
      required final Function0<void> onPopBack}) = _$_ServiceListSubmitted;

  Function1<String, void> get onRouteToTimeOut;
  Function2<String, String, void> get sendMessage;
  List<ServiceData> get saveLst;
  Function0<void> get onPopBack;
  @JsonKey(ignore: true)
  _$$_ServiceListSubmittedCopyWith<_$_ServiceListSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChooseServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseServiceStateCopyWith<$Res> {
  factory $ChooseServiceStateCopyWith(
          ChooseServiceState value, $Res Function(ChooseServiceState) then) =
      _$ChooseServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChooseServiceStateCopyWithImpl<$Res>
    implements $ChooseServiceStateCopyWith<$Res> {
  _$ChooseServiceStateCopyWithImpl(this._value, this._then);

  final ChooseServiceState _value;
  // ignore: unused_field
  final $Res Function(ChooseServiceState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
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
    return 'ChooseServiceState.initial()';
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
    required TResult Function() failure,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChooseServiceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
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
    return 'ChooseServiceState.loading()';
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
    required TResult Function() failure,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChooseServiceState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
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
    return 'ChooseServiceState.failure()';
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
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        success,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChooseServiceState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call(
      {String providerId,
      IList<ServiceData> serviceData,
      Tuple2<RepairCategory, IList<ServiceData>> catAndSv});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? providerId = freezed,
    Object? serviceData = freezed,
    Object? catAndSv = freezed,
  }) {
    return _then(_$_Success(
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceData: serviceData == freezed
          ? _value.serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as IList<ServiceData>,
      catAndSv: catAndSv == freezed
          ? _value.catAndSv
          : catAndSv // ignore: cast_nullable_to_non_nullable
              as Tuple2<RepairCategory, IList<ServiceData>>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.providerId,
      required this.serviceData,
      required this.catAndSv});

  @override
  final String providerId;
  @override
  final IList<ServiceData> serviceData;
  @override
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;

  @override
  String toString() {
    return 'ChooseServiceState.success(providerId: $providerId, serviceData: $serviceData, catAndSv: $catAndSv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other.providerId, providerId) &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData) &&
            const DeepCollectionEquality().equals(other.catAndSv, catAndSv));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(providerId),
      const DeepCollectionEquality().hash(serviceData),
      const DeepCollectionEquality().hash(catAndSv));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        success,
  }) {
    return success(providerId, serviceData, catAndSv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
  }) {
    return success?.call(providerId, serviceData, catAndSv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(providerId, serviceData, catAndSv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ChooseServiceState {
  const factory _Success(
          {required final String providerId,
          required final IList<ServiceData> serviceData,
          required final Tuple2<RepairCategory, IList<ServiceData>> catAndSv}) =
      _$_Success;

  String get providerId;
  IList<ServiceData> get serviceData;
  Tuple2<RepairCategory, IList<ServiceData>> get catAndSv;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
