// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_service_bloc.u.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)
        addNewService,
    required TResult Function(IList<PaymentService> serviceModel) sumbit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNewService value) addNewService,
    required TResult Function(_Submit value) sumbit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderServiceEventCopyWith<$Res> {
  factory $OrderServiceEventCopyWith(
          OrderServiceEvent value, $Res Function(OrderServiceEvent) then) =
      _$OrderServiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderServiceEventCopyWithImpl<$Res>
    implements $OrderServiceEventCopyWith<$Res> {
  _$OrderServiceEventCopyWithImpl(this._value, this._then);

  final OrderServiceEvent _value;
  // ignore: unused_field
  final $Res Function(OrderServiceEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OrderServiceEventCopyWithImpl<$Res>
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
    return 'OrderServiceEvent.started()';
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
    required TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)
        addNewService,
    required TResult Function(IList<PaymentService> serviceModel) sumbit,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
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
    required TResult Function(_AddNewService value) addNewService,
    required TResult Function(_Submit value) sumbit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderServiceEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddNewServiceCopyWith<$Res> {
  factory _$$_AddNewServiceCopyWith(
          _$_AddNewService value, $Res Function(_$_AddNewService) then) =
      __$$_AddNewServiceCopyWithImpl<$Res>;
  $Res call(
      {IList<ServiceModel> currentServiceModel,
      IList<PaymentService> newlyAddedServiceModel});
}

/// @nodoc
class __$$_AddNewServiceCopyWithImpl<$Res>
    extends _$OrderServiceEventCopyWithImpl<$Res>
    implements _$$_AddNewServiceCopyWith<$Res> {
  __$$_AddNewServiceCopyWithImpl(
      _$_AddNewService _value, $Res Function(_$_AddNewService) _then)
      : super(_value, (v) => _then(v as _$_AddNewService));

  @override
  _$_AddNewService get _value => super._value as _$_AddNewService;

  @override
  $Res call({
    Object? currentServiceModel = freezed,
    Object? newlyAddedServiceModel = freezed,
  }) {
    return _then(_$_AddNewService(
      currentServiceModel: currentServiceModel == freezed
          ? _value.currentServiceModel
          : currentServiceModel // ignore: cast_nullable_to_non_nullable
              as IList<ServiceModel>,
      newlyAddedServiceModel: newlyAddedServiceModel == freezed
          ? _value.newlyAddedServiceModel
          : newlyAddedServiceModel // ignore: cast_nullable_to_non_nullable
              as IList<PaymentService>,
    ));
  }
}

/// @nodoc

class _$_AddNewService implements _AddNewService {
  const _$_AddNewService(
      {required this.currentServiceModel,
      required this.newlyAddedServiceModel});

  @override
  final IList<ServiceModel> currentServiceModel;
  @override
  final IList<PaymentService> newlyAddedServiceModel;

  @override
  String toString() {
    return 'OrderServiceEvent.addNewService(currentServiceModel: $currentServiceModel, newlyAddedServiceModel: $newlyAddedServiceModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewService &&
            const DeepCollectionEquality()
                .equals(other.currentServiceModel, currentServiceModel) &&
            const DeepCollectionEquality()
                .equals(other.newlyAddedServiceModel, newlyAddedServiceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentServiceModel),
      const DeepCollectionEquality().hash(newlyAddedServiceModel));

  @JsonKey(ignore: true)
  @override
  _$$_AddNewServiceCopyWith<_$_AddNewService> get copyWith =>
      __$$_AddNewServiceCopyWithImpl<_$_AddNewService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)
        addNewService,
    required TResult Function(IList<PaymentService> serviceModel) sumbit,
  }) {
    return addNewService(currentServiceModel, newlyAddedServiceModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
  }) {
    return addNewService?.call(currentServiceModel, newlyAddedServiceModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
    required TResult orElse(),
  }) {
    if (addNewService != null) {
      return addNewService(currentServiceModel, newlyAddedServiceModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNewService value) addNewService,
    required TResult Function(_Submit value) sumbit,
  }) {
    return addNewService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
  }) {
    return addNewService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
    required TResult orElse(),
  }) {
    if (addNewService != null) {
      return addNewService(this);
    }
    return orElse();
  }
}

abstract class _AddNewService implements OrderServiceEvent {
  const factory _AddNewService(
          {required final IList<ServiceModel> currentServiceModel,
          required final IList<PaymentService> newlyAddedServiceModel}) =
      _$_AddNewService;

  IList<ServiceModel> get currentServiceModel;
  IList<PaymentService> get newlyAddedServiceModel;
  @JsonKey(ignore: true)
  _$$_AddNewServiceCopyWith<_$_AddNewService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
  $Res call({IList<PaymentService> serviceModel});
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$OrderServiceEventCopyWithImpl<$Res>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, (v) => _then(v as _$_Submit));

  @override
  _$_Submit get _value => super._value as _$_Submit;

  @override
  $Res call({
    Object? serviceModel = freezed,
  }) {
    return _then(_$_Submit(
      serviceModel: serviceModel == freezed
          ? _value.serviceModel
          : serviceModel // ignore: cast_nullable_to_non_nullable
              as IList<PaymentService>,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit({required this.serviceModel});

  @override
  final IList<PaymentService> serviceModel;

  @override
  String toString() {
    return 'OrderServiceEvent.sumbit(serviceModel: $serviceModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submit &&
            const DeepCollectionEquality()
                .equals(other.serviceModel, serviceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceModel));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      __$$_SubmitCopyWithImpl<_$_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)
        addNewService,
    required TResult Function(IList<PaymentService> serviceModel) sumbit,
  }) {
    return sumbit(serviceModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
  }) {
    return sumbit?.call(serviceModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(IList<ServiceModel> currentServiceModel,
            IList<PaymentService> newlyAddedServiceModel)?
        addNewService,
    TResult Function(IList<PaymentService> serviceModel)? sumbit,
    required TResult orElse(),
  }) {
    if (sumbit != null) {
      return sumbit(serviceModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddNewService value) addNewService,
    required TResult Function(_Submit value) sumbit,
  }) {
    return sumbit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
  }) {
    return sumbit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddNewService value)? addNewService,
    TResult Function(_Submit value)? sumbit,
    required TResult orElse(),
  }) {
    if (sumbit != null) {
      return sumbit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements OrderServiceEvent {
  const factory _Submit({required final IList<PaymentService> serviceModel}) =
      _$_Submit;

  IList<PaymentService> get serviceModel;
  @JsonKey(ignore: true)
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(
            IList<ServiceModel> services, int totalPrice, bool ready)
        loadDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderServiceStateCopyWith<$Res> {
  factory $OrderServiceStateCopyWith(
          OrderServiceState value, $Res Function(OrderServiceState) then) =
      _$OrderServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderServiceStateCopyWithImpl<$Res>
    implements $OrderServiceStateCopyWith<$Res> {
  _$OrderServiceStateCopyWithImpl(this._value, this._then);

  final OrderServiceState _value;
  // ignore: unused_field
  final $Res Function(OrderServiceState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OrderServiceStateCopyWithImpl<$Res>
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
    return 'OrderServiceState.initial()';
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
    required TResult Function(
            IList<ServiceModel> services, int totalPrice, bool ready)
        loadDataSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
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
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderServiceState {
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
    extends _$OrderServiceStateCopyWithImpl<$Res>
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
    return 'OrderServiceState.loading()';
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
    required TResult Function(
            IList<ServiceModel> services, int totalPrice, bool ready)
        loadDataSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
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
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderServiceState {
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
    extends _$OrderServiceStateCopyWithImpl<$Res>
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
    return 'OrderServiceState.failure()';
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
    required TResult Function(
            IList<ServiceModel> services, int totalPrice, bool ready)
        loadDataSuccess,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
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
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OrderServiceState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_LoadDataSuccessCopyWith<$Res> {
  factory _$$_LoadDataSuccessCopyWith(
          _$_LoadDataSuccess value, $Res Function(_$_LoadDataSuccess) then) =
      __$$_LoadDataSuccessCopyWithImpl<$Res>;
  $Res call({IList<ServiceModel> services, int totalPrice, bool ready});
}

/// @nodoc
class __$$_LoadDataSuccessCopyWithImpl<$Res>
    extends _$OrderServiceStateCopyWithImpl<$Res>
    implements _$$_LoadDataSuccessCopyWith<$Res> {
  __$$_LoadDataSuccessCopyWithImpl(
      _$_LoadDataSuccess _value, $Res Function(_$_LoadDataSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadDataSuccess));

  @override
  _$_LoadDataSuccess get _value => super._value as _$_LoadDataSuccess;

  @override
  $Res call({
    Object? services = freezed,
    Object? totalPrice = freezed,
    Object? ready = freezed,
  }) {
    return _then(_$_LoadDataSuccess(
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as IList<ServiceModel>,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      ready: ready == freezed
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadDataSuccess implements _LoadDataSuccess {
  const _$_LoadDataSuccess(
      {required this.services, required this.totalPrice, required this.ready});

  @override
  final IList<ServiceModel> services;
  @override
  final int totalPrice;
  @override
  final bool ready;

  @override
  String toString() {
    return 'OrderServiceState.loadDataSuccess(services: $services, totalPrice: $totalPrice, ready: $ready)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadDataSuccess &&
            const DeepCollectionEquality().equals(other.services, services) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice) &&
            const DeepCollectionEquality().equals(other.ready, ready));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(services),
      const DeepCollectionEquality().hash(totalPrice),
      const DeepCollectionEquality().hash(ready));

  @JsonKey(ignore: true)
  @override
  _$$_LoadDataSuccessCopyWith<_$_LoadDataSuccess> get copyWith =>
      __$$_LoadDataSuccessCopyWithImpl<_$_LoadDataSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(
            IList<ServiceModel> services, int totalPrice, bool ready)
        loadDataSuccess,
  }) {
    return loadDataSuccess(services, totalPrice, ready);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
  }) {
    return loadDataSuccess?.call(services, totalPrice, ready);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(IList<ServiceModel> services, int totalPrice, bool ready)?
        loadDataSuccess,
    required TResult orElse(),
  }) {
    if (loadDataSuccess != null) {
      return loadDataSuccess(services, totalPrice, ready);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
  }) {
    return loadDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
  }) {
    return loadDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    required TResult orElse(),
  }) {
    if (loadDataSuccess != null) {
      return loadDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadDataSuccess implements OrderServiceState {
  const factory _LoadDataSuccess(
      {required final IList<ServiceModel> services,
      required final int totalPrice,
      required final bool ready}) = _$_LoadDataSuccess;

  IList<ServiceModel> get services;
  int get totalPrice;
  bool get ready;
  @JsonKey(ignore: true)
  _$$_LoadDataSuccessCopyWith<_$_LoadDataSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
