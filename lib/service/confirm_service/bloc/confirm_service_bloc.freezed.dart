// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'confirm_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmServiceEvent {
  String get recordId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String recordId, List<OptionalService> optionalService)
        detailRequestAccepted,
    required TResult Function(
            Function0<void> onRoute, List<ServiceData> saveLst, String recordId)
        selectProductCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String recordId, List<OptionalService> optionalService)?
        detailRequestAccepted,
    TResult Function(Function0<void> onRoute, List<ServiceData> saveLst,
            String recordId)?
        selectProductCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String recordId, List<OptionalService> optionalService)?
        detailRequestAccepted,
    TResult Function(Function0<void> onRoute, List<ServiceData> saveLst,
            String recordId)?
        selectProductCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
    required TResult Function(_SelectProductCompleted value)
        selectProductCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    TResult Function(_SelectProductCompleted value)? selectProductCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    TResult Function(_SelectProductCompleted value)? selectProductCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmServiceEventCopyWith<ConfirmServiceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmServiceEventCopyWith<$Res> {
  factory $ConfirmServiceEventCopyWith(
          ConfirmServiceEvent value, $Res Function(ConfirmServiceEvent) then) =
      _$ConfirmServiceEventCopyWithImpl<$Res>;
  $Res call({String recordId});
}

/// @nodoc
class _$ConfirmServiceEventCopyWithImpl<$Res>
    implements $ConfirmServiceEventCopyWith<$Res> {
  _$ConfirmServiceEventCopyWithImpl(this._value, this._then);

  final ConfirmServiceEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmServiceEvent) _then;

  @override
  $Res call({
    Object? recordId = freezed,
  }) {
    return _then(_value.copyWith(
      recordId: recordId == freezed
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DetailRequestAcceptedCopyWith<$Res>
    implements $ConfirmServiceEventCopyWith<$Res> {
  factory _$$_DetailRequestAcceptedCopyWith(_$_DetailRequestAccepted value,
          $Res Function(_$_DetailRequestAccepted) then) =
      __$$_DetailRequestAcceptedCopyWithImpl<$Res>;
  @override
  $Res call({String recordId, List<OptionalService> optionalService});
}

/// @nodoc
class __$$_DetailRequestAcceptedCopyWithImpl<$Res>
    extends _$ConfirmServiceEventCopyWithImpl<$Res>
    implements _$$_DetailRequestAcceptedCopyWith<$Res> {
  __$$_DetailRequestAcceptedCopyWithImpl(_$_DetailRequestAccepted _value,
      $Res Function(_$_DetailRequestAccepted) _then)
      : super(_value, (v) => _then(v as _$_DetailRequestAccepted));

  @override
  _$_DetailRequestAccepted get _value =>
      super._value as _$_DetailRequestAccepted;

  @override
  $Res call({
    Object? recordId = freezed,
    Object? optionalService = freezed,
  }) {
    return _then(_$_DetailRequestAccepted(
      recordId: recordId == freezed
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
      optionalService: optionalService == freezed
          ? _value._optionalService
          : optionalService // ignore: cast_nullable_to_non_nullable
              as List<OptionalService>,
    ));
  }
}

/// @nodoc

class _$_DetailRequestAccepted implements _DetailRequestAccepted {
  const _$_DetailRequestAccepted(
      {required this.recordId,
      required final List<OptionalService> optionalService})
      : _optionalService = optionalService;

  @override
  final String recordId;
  final List<OptionalService> _optionalService;
  @override
  List<OptionalService> get optionalService {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionalService);
  }

  @override
  String toString() {
    return 'ConfirmServiceEvent.detailRequestAccepted(recordId: $recordId, optionalService: $optionalService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailRequestAccepted &&
            const DeepCollectionEquality().equals(other.recordId, recordId) &&
            const DeepCollectionEquality()
                .equals(other._optionalService, _optionalService));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recordId),
      const DeepCollectionEquality().hash(_optionalService));

  @JsonKey(ignore: true)
  @override
  _$$_DetailRequestAcceptedCopyWith<_$_DetailRequestAccepted> get copyWith =>
      __$$_DetailRequestAcceptedCopyWithImpl<_$_DetailRequestAccepted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String recordId, List<OptionalService> optionalService)
        detailRequestAccepted,
    required TResult Function(
            Function0<void> onRoute, List<ServiceData> saveLst, String recordId)
        selectProductCompleted,
  }) {
    return detailRequestAccepted(recordId, optionalService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String recordId, List<OptionalService> optionalService)?
        detailRequestAccepted,
    TResult Function(Function0<void> onRoute, List<ServiceData> saveLst,
            String recordId)?
        selectProductCompleted,
  }) {
    return detailRequestAccepted?.call(recordId, optionalService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String recordId, List<OptionalService> optionalService)?
        detailRequestAccepted,
    TResult Function(Function0<void> onRoute, List<ServiceData> saveLst,
            String recordId)?
        selectProductCompleted,
    required TResult orElse(),
  }) {
    if (detailRequestAccepted != null) {
      return detailRequestAccepted(recordId, optionalService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
    required TResult Function(_SelectProductCompleted value)
        selectProductCompleted,
  }) {
    return detailRequestAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    TResult Function(_SelectProductCompleted value)? selectProductCompleted,
  }) {
    return detailRequestAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    TResult Function(_SelectProductCompleted value)? selectProductCompleted,
    required TResult orElse(),
  }) {
    if (detailRequestAccepted != null) {
      return detailRequestAccepted(this);
    }
    return orElse();
  }
}

abstract class _DetailRequestAccepted implements ConfirmServiceEvent {
  const factory _DetailRequestAccepted(
          {required final String recordId,
          required final List<OptionalService> optionalService}) =
      _$_DetailRequestAccepted;

  @override
  String get recordId;
  List<OptionalService> get optionalService;
  @override
  @JsonKey(ignore: true)
  _$$_DetailRequestAcceptedCopyWith<_$_DetailRequestAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectProductCompletedCopyWith<$Res>
    implements $ConfirmServiceEventCopyWith<$Res> {
  factory _$$_SelectProductCompletedCopyWith(_$_SelectProductCompleted value,
          $Res Function(_$_SelectProductCompleted) then) =
      __$$_SelectProductCompletedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Function0<void> onRoute, List<ServiceData> saveLst, String recordId});
}

/// @nodoc
class __$$_SelectProductCompletedCopyWithImpl<$Res>
    extends _$ConfirmServiceEventCopyWithImpl<$Res>
    implements _$$_SelectProductCompletedCopyWith<$Res> {
  __$$_SelectProductCompletedCopyWithImpl(_$_SelectProductCompleted _value,
      $Res Function(_$_SelectProductCompleted) _then)
      : super(_value, (v) => _then(v as _$_SelectProductCompleted));

  @override
  _$_SelectProductCompleted get _value =>
      super._value as _$_SelectProductCompleted;

  @override
  $Res call({
    Object? onRoute = freezed,
    Object? saveLst = freezed,
    Object? recordId = freezed,
  }) {
    return _then(_$_SelectProductCompleted(
      onRoute: onRoute == freezed
          ? _value.onRoute
          : onRoute // ignore: cast_nullable_to_non_nullable
              as Function0<void>,
      saveLst: saveLst == freezed
          ? _value._saveLst
          : saveLst // ignore: cast_nullable_to_non_nullable
              as List<ServiceData>,
      recordId: recordId == freezed
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectProductCompleted implements _SelectProductCompleted {
  const _$_SelectProductCompleted(
      {required this.onRoute,
      required final List<ServiceData> saveLst,
      required this.recordId})
      : _saveLst = saveLst;

  @override
  final Function0<void> onRoute;
  final List<ServiceData> _saveLst;
  @override
  List<ServiceData> get saveLst {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saveLst);
  }

  @override
  final String recordId;

  @override
  String toString() {
    return 'ConfirmServiceEvent.selectProductCompleted(onRoute: $onRoute, saveLst: $saveLst, recordId: $recordId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectProductCompleted &&
            (identical(other.onRoute, onRoute) || other.onRoute == onRoute) &&
            const DeepCollectionEquality().equals(other._saveLst, _saveLst) &&
            const DeepCollectionEquality().equals(other.recordId, recordId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      onRoute,
      const DeepCollectionEquality().hash(_saveLst),
      const DeepCollectionEquality().hash(recordId));

  @JsonKey(ignore: true)
  @override
  _$$_SelectProductCompletedCopyWith<_$_SelectProductCompleted> get copyWith =>
      __$$_SelectProductCompletedCopyWithImpl<_$_SelectProductCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String recordId, List<OptionalService> optionalService)
        detailRequestAccepted,
    required TResult Function(
            Function0<void> onRoute, List<ServiceData> saveLst, String recordId)
        selectProductCompleted,
  }) {
    return selectProductCompleted(onRoute, saveLst, recordId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String recordId, List<OptionalService> optionalService)?
        detailRequestAccepted,
    TResult Function(Function0<void> onRoute, List<ServiceData> saveLst,
            String recordId)?
        selectProductCompleted,
  }) {
    return selectProductCompleted?.call(onRoute, saveLst, recordId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String recordId, List<OptionalService> optionalService)?
        detailRequestAccepted,
    TResult Function(Function0<void> onRoute, List<ServiceData> saveLst,
            String recordId)?
        selectProductCompleted,
    required TResult orElse(),
  }) {
    if (selectProductCompleted != null) {
      return selectProductCompleted(onRoute, saveLst, recordId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailRequestAccepted value)
        detailRequestAccepted,
    required TResult Function(_SelectProductCompleted value)
        selectProductCompleted,
  }) {
    return selectProductCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    TResult Function(_SelectProductCompleted value)? selectProductCompleted,
  }) {
    return selectProductCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailRequestAccepted value)? detailRequestAccepted,
    TResult Function(_SelectProductCompleted value)? selectProductCompleted,
    required TResult orElse(),
  }) {
    if (selectProductCompleted != null) {
      return selectProductCompleted(this);
    }
    return orElse();
  }
}

abstract class _SelectProductCompleted implements ConfirmServiceEvent {
  const factory _SelectProductCompleted(
      {required final Function0<void> onRoute,
      required final List<ServiceData> saveLst,
      required final String recordId}) = _$_SelectProductCompleted;

  Function0<void> get onRoute;
  List<ServiceData> get saveLst;
  @override
  String get recordId;
  @override
  @JsonKey(ignore: true)
  _$$_SelectProductCompletedCopyWith<_$_SelectProductCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_OrderModify value) orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmServiceStateCopyWith<$Res> {
  factory $ConfirmServiceStateCopyWith(
          ConfirmServiceState value, $Res Function(ConfirmServiceState) then) =
      _$ConfirmServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmServiceStateCopyWithImpl<$Res>
    implements $ConfirmServiceStateCopyWith<$Res> {
  _$ConfirmServiceStateCopyWithImpl(this._value, this._then);

  final ConfirmServiceState _value;
  // ignore: unused_field
  final $Res Function(ConfirmServiceState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConfirmServiceStateCopyWithImpl<$Res>
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
    return 'ConfirmServiceState.initial()';
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
    required TResult Function() failure,
    required TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        orderModify,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_OrderModify value) orderModify,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConfirmServiceState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$ConfirmServiceStateCopyWithImpl<$Res>
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
    return 'ConfirmServiceState.failure()';
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
    required TResult Function() failure,
    required TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        orderModify,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_OrderModify value) orderModify,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ConfirmServiceState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_OrderModifyCopyWith<$Res> {
  factory _$$_OrderModifyCopyWith(
          _$_OrderModify value, $Res Function(_$_OrderModify) then) =
      __$$_OrderModifyCopyWithImpl<$Res>;
  $Res call(
      {String providerId,
      IList<ServiceData> serviceData,
      List<PendingServiceModel> pendingService,
      Tuple2<RepairCategory, IList<ServiceData>> catAndSv});
}

/// @nodoc
class __$$_OrderModifyCopyWithImpl<$Res>
    extends _$ConfirmServiceStateCopyWithImpl<$Res>
    implements _$$_OrderModifyCopyWith<$Res> {
  __$$_OrderModifyCopyWithImpl(
      _$_OrderModify _value, $Res Function(_$_OrderModify) _then)
      : super(_value, (v) => _then(v as _$_OrderModify));

  @override
  _$_OrderModify get _value => super._value as _$_OrderModify;

  @override
  $Res call({
    Object? providerId = freezed,
    Object? serviceData = freezed,
    Object? pendingService = freezed,
    Object? catAndSv = freezed,
  }) {
    return _then(_$_OrderModify(
      providerId: providerId == freezed
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceData: serviceData == freezed
          ? _value.serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as IList<ServiceData>,
      pendingService: pendingService == freezed
          ? _value._pendingService
          : pendingService // ignore: cast_nullable_to_non_nullable
              as List<PendingServiceModel>,
      catAndSv: catAndSv == freezed
          ? _value.catAndSv
          : catAndSv // ignore: cast_nullable_to_non_nullable
              as Tuple2<RepairCategory, IList<ServiceData>>,
    ));
  }
}

/// @nodoc

class _$_OrderModify implements _OrderModify {
  const _$_OrderModify(
      {required this.providerId,
      required this.serviceData,
      required final List<PendingServiceModel> pendingService,
      required this.catAndSv})
      : _pendingService = pendingService;

  @override
  final String providerId;
  @override
  final IList<ServiceData> serviceData;
  final List<PendingServiceModel> _pendingService;
  @override
  List<PendingServiceModel> get pendingService {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingService);
  }

  @override
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;

  @override
  String toString() {
    return 'ConfirmServiceState.orderModify(providerId: $providerId, serviceData: $serviceData, pendingService: $pendingService, catAndSv: $catAndSv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModify &&
            const DeepCollectionEquality()
                .equals(other.providerId, providerId) &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData) &&
            const DeepCollectionEquality()
                .equals(other._pendingService, _pendingService) &&
            const DeepCollectionEquality().equals(other.catAndSv, catAndSv));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(providerId),
      const DeepCollectionEquality().hash(serviceData),
      const DeepCollectionEquality().hash(_pendingService),
      const DeepCollectionEquality().hash(catAndSv));

  @JsonKey(ignore: true)
  @override
  _$$_OrderModifyCopyWith<_$_OrderModify> get copyWith =>
      __$$_OrderModifyCopyWithImpl<_$_OrderModify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)
        orderModify,
  }) {
    return orderModify(providerId, serviceData, pendingService, catAndSv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
  }) {
    return orderModify?.call(providerId, serviceData, pendingService, catAndSv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function(
            String providerId,
            IList<ServiceData> serviceData,
            List<PendingServiceModel> pendingService,
            Tuple2<RepairCategory, IList<ServiceData>> catAndSv)?
        orderModify,
    required TResult orElse(),
  }) {
    if (orderModify != null) {
      return orderModify(providerId, serviceData, pendingService, catAndSv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failure value) failure,
    required TResult Function(_OrderModify value) orderModify,
  }) {
    return orderModify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
  }) {
    return orderModify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failure value)? failure,
    TResult Function(_OrderModify value)? orderModify,
    required TResult orElse(),
  }) {
    if (orderModify != null) {
      return orderModify(this);
    }
    return orElse();
  }
}

abstract class _OrderModify implements ConfirmServiceState {
  const factory _OrderModify(
          {required final String providerId,
          required final IList<ServiceData> serviceData,
          required final List<PendingServiceModel> pendingService,
          required final Tuple2<RepairCategory, IList<ServiceData>> catAndSv}) =
      _$_OrderModify;

  String get providerId;
  IList<ServiceData> get serviceData;
  List<PendingServiceModel> get pendingService;
  Tuple2<RepairCategory, IList<ServiceData>> get catAndSv;
  @JsonKey(ignore: true)
  _$$_OrderModifyCopyWith<_$_OrderModify> get copyWith =>
      throw _privateConstructorUsedError;
}
