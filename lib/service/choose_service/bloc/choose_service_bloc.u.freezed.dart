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
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)
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
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)?
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
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)?
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
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)
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
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)?
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
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)?
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
      Function0<void> onPopBack,
      Function4<int, String, String, String, void> pay});
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
    Object? pay = freezed,
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
      pay: pay == freezed
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as Function4<int, String, String, String, void>,
    ));
  }
}

/// @nodoc

class _$_ServiceListSubmitted implements _ServiceListSubmitted {
  const _$_ServiceListSubmitted(
      {required this.onRouteToTimeOut,
      required this.sendMessage,
      required final List<ServiceData> saveLst,
      required this.onPopBack,
      required this.pay})
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
  final Function4<int, String, String, String, void> pay;

  @override
  String toString() {
    return 'ChooseServiceEvent.serviceListSubmitted(onRouteToTimeOut: $onRouteToTimeOut, sendMessage: $sendMessage, saveLst: $saveLst, onPopBack: $onPopBack, pay: $pay)';
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
                other.onPopBack == onPopBack) &&
            (identical(other.pay, pay) || other.pay == pay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onRouteToTimeOut, sendMessage,
      const DeepCollectionEquality().hash(_saveLst), onPopBack, pay);

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
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)
        serviceListSubmitted,
  }) {
    return serviceListSubmitted(
        onRouteToTimeOut, sendMessage, saveLst, onPopBack, pay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)?
        serviceListSubmitted,
  }) {
    return serviceListSubmitted?.call(
        onRouteToTimeOut, sendMessage, saveLst, onPopBack, pay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OptionalService> newService)? started,
    TResult Function(
            Function1<String, void> onRouteToTimeOut,
            Function2<String, String, void> sendMessage,
            List<ServiceData> saveLst,
            Function0<void> onPopBack,
            Function4<int, String, String, String, void> pay)?
        serviceListSubmitted,
    required TResult orElse(),
  }) {
    if (serviceListSubmitted != null) {
      return serviceListSubmitted(
          onRouteToTimeOut, sendMessage, saveLst, onPopBack, pay);
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
          required final Function0<void> onPopBack,
          required final Function4<int, String, String, String, void> pay}) =
      _$_ServiceListSubmitted;

  Function1<String, void> get onRouteToTimeOut;
  Function2<String, String, void> get sendMessage;
  List<ServiceData> get saveLst;
  Function0<void> get onPopBack;
  Function4<int, String, String, String, void> get pay;
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
    required TResult Function(String recordId) submitted,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Submitted value)? submitted,
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
    required TResult Function(String recordId) submitted,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)
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
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
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
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
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
    required TResult Function(_Submitted value) submitted,
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
    TResult Function(_Submitted value)? submitted,
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
    TResult Function(_Submitted value)? submitted,
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
    required TResult Function(String recordId) submitted,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)
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
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
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
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
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
    required TResult Function(_Submitted value) submitted,
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
    TResult Function(_Submitted value)? submitted,
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
    TResult Function(_Submitted value)? submitted,
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
    required TResult Function(String recordId) submitted,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)
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
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
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
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
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
    required TResult Function(_Submitted value) submitted,
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
    TResult Function(_Submitted value)? submitted,
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
    TResult Function(_Submitted value)? submitted,
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
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
  $Res call({String recordId});
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$ChooseServiceStateCopyWithImpl<$Res>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, (v) => _then(v as _$_Submitted));

  @override
  _$_Submitted get _value => super._value as _$_Submitted;

  @override
  $Res call({
    Object? recordId = freezed,
  }) {
    return _then(_$_Submitted(
      recordId: recordId == freezed
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted({required this.recordId});

  @override
  final String recordId;

  @override
  String toString() {
    return 'ChooseServiceState.submitted(recordId: $recordId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submitted &&
            const DeepCollectionEquality().equals(other.recordId, recordId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recordId));

  @JsonKey(ignore: true)
  @override
  _$$_SubmittedCopyWith<_$_Submitted> get copyWith =>
      __$$_SubmittedCopyWithImpl<_$_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(String recordId) submitted,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)
        success,
  }) {
    return submitted(recordId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
        success,
  }) {
    return submitted?.call(recordId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
        success,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(recordId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Success value) success,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Success value)? success,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ChooseServiceState {
  const factory _Submitted({required final String recordId}) = _$_Submitted;

  String get recordId;
  @JsonKey(ignore: true)
  _$$_SubmittedCopyWith<_$_Submitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call(
      {String providerId,
      IList<ServiceData> serviceData,
      Tuple2<RepairCategory, IList<ServiceData>> catAndSv,
      int movingFee});
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
    Object? movingFee = freezed,
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
      movingFee: movingFee == freezed
          ? _value.movingFee
          : movingFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.providerId,
      required this.serviceData,
      required this.catAndSv,
      required this.movingFee});

  @override
  final String providerId;
  @override
  final IList<ServiceData> serviceData;
  @override
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;
  @override
  final int movingFee;

  @override
  String toString() {
    return 'ChooseServiceState.success(providerId: $providerId, serviceData: $serviceData, catAndSv: $catAndSv, movingFee: $movingFee)';
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
            const DeepCollectionEquality().equals(other.catAndSv, catAndSv) &&
            const DeepCollectionEquality().equals(other.movingFee, movingFee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(providerId),
      const DeepCollectionEquality().hash(serviceData),
      const DeepCollectionEquality().hash(catAndSv),
      const DeepCollectionEquality().hash(movingFee));

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
    required TResult Function(String recordId) submitted,
    required TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)
        success,
  }) {
    return success(providerId, serviceData, catAndSv, movingFee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
        success,
  }) {
    return success?.call(providerId, serviceData, catAndSv, movingFee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(String recordId)? submitted,
    TResult Function(String providerId, IList<ServiceData> serviceData,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv, int movingFee)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(providerId, serviceData, catAndSv, movingFee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Submitted value) submitted,
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
    TResult Function(_Submitted value)? submitted,
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
    TResult Function(_Submitted value)? submitted,
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
      required final Tuple2<RepairCategory, IList<ServiceData>> catAndSv,
      required final int movingFee}) = _$_Success;

  String get providerId;
  IList<ServiceData> get serviceData;
  Tuple2<RepairCategory, IList<ServiceData>> get catAndSv;
  int get movingFee;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}
