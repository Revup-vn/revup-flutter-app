// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'overview_order_bloc.u.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OverviewOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        submitted,
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Cancel value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewOrderEventCopyWith<$Res> {
  factory $OverviewOrderEventCopyWith(
          OverviewOrderEvent value, $Res Function(OverviewOrderEvent) then) =
      _$OverviewOrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OverviewOrderEventCopyWithImpl<$Res>
    implements $OverviewOrderEventCopyWith<$Res> {
  _$OverviewOrderEventCopyWithImpl(this._value, this._then);

  final OverviewOrderEvent _value;
  // ignore: unused_field
  final $Res Function(OverviewOrderEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OverviewOrderEventCopyWithImpl<$Res>
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
    return 'OverviewOrderEvent.started()';
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
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        submitted,
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        cancel,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
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
    required TResult Function(_Cancel value) cancel,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OverviewOrderEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
  $Res call(
      {Function0<void> onRoute, Function2<String, String, void> sendMessage});
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$OverviewOrderEventCopyWithImpl<$Res>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, (v) => _then(v as _$_Submitted));

  @override
  _$_Submitted get _value => super._value as _$_Submitted;

  @override
  $Res call({
    Object? onRoute = freezed,
    Object? sendMessage = freezed,
  }) {
    return _then(_$_Submitted(
      onRoute: onRoute == freezed
          ? _value.onRoute
          : onRoute // ignore: cast_nullable_to_non_nullable
              as Function0<void>,
      sendMessage: sendMessage == freezed
          ? _value.sendMessage
          : sendMessage // ignore: cast_nullable_to_non_nullable
              as Function2<String, String, void>,
    ));
  }
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted({required this.onRoute, required this.sendMessage});

  @override
  final Function0<void> onRoute;
  @override
  final Function2<String, String, void> sendMessage;

  @override
  String toString() {
    return 'OverviewOrderEvent.submitted(onRoute: $onRoute, sendMessage: $sendMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submitted &&
            (identical(other.onRoute, onRoute) || other.onRoute == onRoute) &&
            (identical(other.sendMessage, sendMessage) ||
                other.sendMessage == sendMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onRoute, sendMessage);

  @JsonKey(ignore: true)
  @override
  _$$_SubmittedCopyWith<_$_Submitted> get copyWith =>
      __$$_SubmittedCopyWithImpl<_$_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        submitted,
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        cancel,
  }) {
    return submitted(onRoute, sendMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
  }) {
    return submitted?.call(onRoute, sendMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(onRoute, sendMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Cancel value) cancel,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements OverviewOrderEvent {
  const factory _Submitted(
          {required final Function0<void> onRoute,
          required final Function2<String, String, void> sendMessage}) =
      _$_Submitted;

  Function0<void> get onRoute;
  Function2<String, String, void> get sendMessage;
  @JsonKey(ignore: true)
  _$$_SubmittedCopyWith<_$_Submitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelCopyWith<$Res> {
  factory _$$_CancelCopyWith(_$_Cancel value, $Res Function(_$_Cancel) then) =
      __$$_CancelCopyWithImpl<$Res>;
  $Res call(
      {Function0<void> onRoute, Function2<String, String, void> sendMessage});
}

/// @nodoc
class __$$_CancelCopyWithImpl<$Res>
    extends _$OverviewOrderEventCopyWithImpl<$Res>
    implements _$$_CancelCopyWith<$Res> {
  __$$_CancelCopyWithImpl(_$_Cancel _value, $Res Function(_$_Cancel) _then)
      : super(_value, (v) => _then(v as _$_Cancel));

  @override
  _$_Cancel get _value => super._value as _$_Cancel;

  @override
  $Res call({
    Object? onRoute = freezed,
    Object? sendMessage = freezed,
  }) {
    return _then(_$_Cancel(
      onRoute: onRoute == freezed
          ? _value.onRoute
          : onRoute // ignore: cast_nullable_to_non_nullable
              as Function0<void>,
      sendMessage: sendMessage == freezed
          ? _value.sendMessage
          : sendMessage // ignore: cast_nullable_to_non_nullable
              as Function2<String, String, void>,
    ));
  }
}

/// @nodoc

class _$_Cancel implements _Cancel {
  const _$_Cancel({required this.onRoute, required this.sendMessage});

  @override
  final Function0<void> onRoute;
  @override
  final Function2<String, String, void> sendMessage;

  @override
  String toString() {
    return 'OverviewOrderEvent.cancel(onRoute: $onRoute, sendMessage: $sendMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cancel &&
            (identical(other.onRoute, onRoute) || other.onRoute == onRoute) &&
            (identical(other.sendMessage, sendMessage) ||
                other.sendMessage == sendMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onRoute, sendMessage);

  @JsonKey(ignore: true)
  @override
  _$$_CancelCopyWith<_$_Cancel> get copyWith =>
      __$$_CancelCopyWithImpl<_$_Cancel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        submitted,
    required TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)
        cancel,
  }) {
    return cancel(onRoute, sendMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
  }) {
    return cancel?.call(onRoute, sendMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        submitted,
    TResult Function(Function0<void> onRoute,
            Function2<String, String, void> sendMessage)?
        cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(onRoute, sendMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Cancel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Cancel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements OverviewOrderEvent {
  const factory _Cancel(
      {required final Function0<void> onRoute,
      required final Function2<String, String, void> sendMessage}) = _$_Cancel;

  Function0<void> get onRoute;
  Function2<String, String, void> get sendMessage;
  @JsonKey(ignore: true)
  _$$_CancelCopyWith<_$_Cancel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)
        loadDataSuccess,
    required TResult Function() loading,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewOrderStateCopyWith<$Res> {
  factory $OverviewOrderStateCopyWith(
          OverviewOrderState value, $Res Function(OverviewOrderState) then) =
      _$OverviewOrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OverviewOrderStateCopyWithImpl<$Res>
    implements $OverviewOrderStateCopyWith<$Res> {
  _$OverviewOrderStateCopyWithImpl(this._value, this._then);

  final OverviewOrderState _value;
  // ignore: unused_field
  final $Res Function(OverviewOrderState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OverviewOrderStateCopyWithImpl<$Res>
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
    return 'OverviewOrderState.initial()';
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
    required TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)
        loadDataSuccess,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
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
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OverviewOrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadDataSuccessCopyWith<$Res> {
  factory _$$_LoadDataSuccessCopyWith(
          _$_LoadDataSuccess value, $Res Function(_$_LoadDataSuccess) then) =
      __$$_LoadDataSuccessCopyWithImpl<$Res>;
  $Res call(
      {OverviewOrderModel overviewOrderData,
      List<PendingServiceModel> pendingService,
      PendingRepairRequest pendingRequest,
      int total,
      int len});

  $OverviewOrderModelCopyWith<$Res> get overviewOrderData;
  $PendingRepairRequestCopyWith<$Res> get pendingRequest;
}

/// @nodoc
class __$$_LoadDataSuccessCopyWithImpl<$Res>
    extends _$OverviewOrderStateCopyWithImpl<$Res>
    implements _$$_LoadDataSuccessCopyWith<$Res> {
  __$$_LoadDataSuccessCopyWithImpl(
      _$_LoadDataSuccess _value, $Res Function(_$_LoadDataSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadDataSuccess));

  @override
  _$_LoadDataSuccess get _value => super._value as _$_LoadDataSuccess;

  @override
  $Res call({
    Object? overviewOrderData = freezed,
    Object? pendingService = freezed,
    Object? pendingRequest = freezed,
    Object? total = freezed,
    Object? len = freezed,
  }) {
    return _then(_$_LoadDataSuccess(
      overviewOrderData: overviewOrderData == freezed
          ? _value.overviewOrderData
          : overviewOrderData // ignore: cast_nullable_to_non_nullable
              as OverviewOrderModel,
      pendingService: pendingService == freezed
          ? _value._pendingService
          : pendingService // ignore: cast_nullable_to_non_nullable
              as List<PendingServiceModel>,
      pendingRequest: pendingRequest == freezed
          ? _value.pendingRequest
          : pendingRequest // ignore: cast_nullable_to_non_nullable
              as PendingRepairRequest,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      len: len == freezed
          ? _value.len
          : len // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $OverviewOrderModelCopyWith<$Res> get overviewOrderData {
    return $OverviewOrderModelCopyWith<$Res>(_value.overviewOrderData, (value) {
      return _then(_value.copyWith(overviewOrderData: value));
    });
  }

  @override
  $PendingRepairRequestCopyWith<$Res> get pendingRequest {
    return $PendingRepairRequestCopyWith<$Res>(_value.pendingRequest, (value) {
      return _then(_value.copyWith(pendingRequest: value));
    });
  }
}

/// @nodoc

class _$_LoadDataSuccess implements _LoadDataSuccess {
  const _$_LoadDataSuccess(
      {required this.overviewOrderData,
      required final List<PendingServiceModel> pendingService,
      required this.pendingRequest,
      required this.total,
      required this.len})
      : _pendingService = pendingService;

  @override
  final OverviewOrderModel overviewOrderData;
  final List<PendingServiceModel> _pendingService;
  @override
  List<PendingServiceModel> get pendingService {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingService);
  }

// required List<NeedToVerifyModel> needToVerifyService,
  @override
  final PendingRepairRequest pendingRequest;
  @override
  final int total;
  @override
  final int len;

  @override
  String toString() {
    return 'OverviewOrderState.loadDataSuccess(overviewOrderData: $overviewOrderData, pendingService: $pendingService, pendingRequest: $pendingRequest, total: $total, len: $len)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadDataSuccess &&
            const DeepCollectionEquality()
                .equals(other.overviewOrderData, overviewOrderData) &&
            const DeepCollectionEquality()
                .equals(other._pendingService, _pendingService) &&
            const DeepCollectionEquality()
                .equals(other.pendingRequest, pendingRequest) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.len, len));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(overviewOrderData),
      const DeepCollectionEquality().hash(_pendingService),
      const DeepCollectionEquality().hash(pendingRequest),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(len));

  @JsonKey(ignore: true)
  @override
  _$$_LoadDataSuccessCopyWith<_$_LoadDataSuccess> get copyWith =>
      __$$_LoadDataSuccessCopyWithImpl<_$_LoadDataSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)
        loadDataSuccess,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return loadDataSuccess(
        overviewOrderData, pendingService, pendingRequest, total, len);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
  }) {
    return loadDataSuccess?.call(
        overviewOrderData, pendingService, pendingRequest, total, len);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loadDataSuccess != null) {
      return loadDataSuccess(
          overviewOrderData, pendingService, pendingRequest, total, len);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loadDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return loadDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadDataSuccess != null) {
      return loadDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadDataSuccess implements OverviewOrderState {
  const factory _LoadDataSuccess(
      {required final OverviewOrderModel overviewOrderData,
      required final List<PendingServiceModel> pendingService,
      required final PendingRepairRequest pendingRequest,
      required final int total,
      required final int len}) = _$_LoadDataSuccess;

  OverviewOrderModel get overviewOrderData;
  List<PendingServiceModel>
      get pendingService; // required List<NeedToVerifyModel> needToVerifyService,
  PendingRepairRequest get pendingRequest;
  int get total;
  int get len;
  @JsonKey(ignore: true)
  _$$_LoadDataSuccessCopyWith<_$_LoadDataSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$OverviewOrderStateCopyWithImpl<$Res>
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
    return 'OverviewOrderState.loading()';
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
    required TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)
        loadDataSuccess,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
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
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OverviewOrderState {
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
    extends _$OverviewOrderStateCopyWithImpl<$Res>
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
    return 'OverviewOrderState.failure()';
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
    required TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)
        loadDataSuccess,
    required TResult Function() loading,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            OverviewOrderModel overviewOrderData,
            List<PendingServiceModel> pendingService,
            PendingRepairRequest pendingRequest,
            int total,
            int len)?
        loadDataSuccess,
    TResult Function()? loading,
    TResult Function()? failure,
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
    required TResult Function(_LoadDataSuccess value) loadDataSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadDataSuccess value)? loadDataSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OverviewOrderState {
  const factory _Failure() = _$_Failure;
}
