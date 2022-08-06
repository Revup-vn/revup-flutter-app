// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repairer_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepairerProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairerProfileEventCopyWith<$Res> {
  factory $RepairerProfileEventCopyWith(RepairerProfileEvent value,
          $Res Function(RepairerProfileEvent) then) =
      _$RepairerProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepairerProfileEventCopyWithImpl<$Res>
    implements $RepairerProfileEventCopyWith<$Res> {
  _$RepairerProfileEventCopyWithImpl(this._value, this._then);

  final RepairerProfileEvent _value;
  // ignore: unused_field
  final $Res Function(RepairerProfileEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$RepairerProfileEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepairerProfileEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RepairerProfileEvent.started'));
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RepairerProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$RepairerProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)
        dataLoadSuccess,
    required TResult Function() dataLoadFailure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_DataLoadFailure value) dataLoadFailure,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairerProfileStateCopyWith<$Res> {
  factory $RepairerProfileStateCopyWith(RepairerProfileState value,
          $Res Function(RepairerProfileState) then) =
      _$RepairerProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepairerProfileStateCopyWithImpl<$Res>
    implements $RepairerProfileStateCopyWith<$Res> {
  _$RepairerProfileStateCopyWithImpl(this._value, this._then);

  final RepairerProfileState _value;
  // ignore: unused_field
  final $Res Function(RepairerProfileState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RepairerProfileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepairerProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RepairerProfileState.initial'));
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
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)
        dataLoadSuccess,
    required TResult Function() dataLoadFailure,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
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
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_DataLoadFailure value) dataLoadFailure,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RepairerProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataLoadSuccessCopyWith<$Res> {
  factory _$$_DataLoadSuccessCopyWith(
          _$_DataLoadSuccess value, $Res Function(_$_DataLoadSuccess) then) =
      __$$_DataLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {IList<ServiceData> serviceData,
      IList<RatingData> ratingData,
      ProviderData provider,
      List<Tuple2<RepairCategory, IList<ServiceData>>> categories});

  $ProviderDataCopyWith<$Res> get provider;
}

/// @nodoc
class __$$_DataLoadSuccessCopyWithImpl<$Res>
    extends _$RepairerProfileStateCopyWithImpl<$Res>
    implements _$$_DataLoadSuccessCopyWith<$Res> {
  __$$_DataLoadSuccessCopyWithImpl(
      _$_DataLoadSuccess _value, $Res Function(_$_DataLoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_DataLoadSuccess));

  @override
  _$_DataLoadSuccess get _value => super._value as _$_DataLoadSuccess;

  @override
  $Res call({
    Object? serviceData = freezed,
    Object? ratingData = freezed,
    Object? provider = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$_DataLoadSuccess(
      serviceData: serviceData == freezed
          ? _value.serviceData
          : serviceData // ignore: cast_nullable_to_non_nullable
              as IList<ServiceData>,
      ratingData: ratingData == freezed
          ? _value.ratingData
          : ratingData // ignore: cast_nullable_to_non_nullable
              as IList<RatingData>,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as ProviderData,
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Tuple2<RepairCategory, IList<ServiceData>>>,
    ));
  }

  @override
  $ProviderDataCopyWith<$Res> get provider {
    return $ProviderDataCopyWith<$Res>(_value.provider, (value) {
      return _then(_value.copyWith(provider: value));
    });
  }
}

/// @nodoc

class _$_DataLoadSuccess
    with DiagnosticableTreeMixin
    implements _DataLoadSuccess {
  const _$_DataLoadSuccess(
      {required this.serviceData,
      required this.ratingData,
      required this.provider,
      required final List<Tuple2<RepairCategory, IList<ServiceData>>>
          categories})
      : _categories = categories;

  @override
  final IList<ServiceData> serviceData;
  @override
  final IList<RatingData> ratingData;
  @override
  final ProviderData provider;
  final List<Tuple2<RepairCategory, IList<ServiceData>>> _categories;
  @override
  List<Tuple2<RepairCategory, IList<ServiceData>>> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepairerProfileState.dataLoadSuccess(serviceData: $serviceData, ratingData: $ratingData, provider: $provider, categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepairerProfileState.dataLoadSuccess'))
      ..add(DiagnosticsProperty('serviceData', serviceData))
      ..add(DiagnosticsProperty('ratingData', ratingData))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.serviceData, serviceData) &&
            const DeepCollectionEquality()
                .equals(other.ratingData, ratingData) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serviceData),
      const DeepCollectionEquality().hash(ratingData),
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  _$$_DataLoadSuccessCopyWith<_$_DataLoadSuccess> get copyWith =>
      __$$_DataLoadSuccessCopyWithImpl<_$_DataLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)
        dataLoadSuccess,
    required TResult Function() dataLoadFailure,
    required TResult Function() loading,
  }) {
    return dataLoadSuccess(serviceData, ratingData, provider, categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
  }) {
    return dataLoadSuccess?.call(serviceData, ratingData, provider, categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (dataLoadSuccess != null) {
      return dataLoadSuccess(serviceData, ratingData, provider, categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_DataLoadFailure value) dataLoadFailure,
    required TResult Function(_Loading value) loading,
  }) {
    return dataLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
  }) {
    return dataLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (dataLoadSuccess != null) {
      return dataLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DataLoadSuccess implements RepairerProfileState {
  const factory _DataLoadSuccess(
      {required final IList<ServiceData> serviceData,
      required final IList<RatingData> ratingData,
      required final ProviderData provider,
      required final List<Tuple2<RepairCategory, IList<ServiceData>>>
          categories}) = _$_DataLoadSuccess;

  IList<ServiceData> get serviceData;
  IList<RatingData> get ratingData;
  ProviderData get provider;
  List<Tuple2<RepairCategory, IList<ServiceData>>> get categories;
  @JsonKey(ignore: true)
  _$$_DataLoadSuccessCopyWith<_$_DataLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataLoadFailureCopyWith<$Res> {
  factory _$$_DataLoadFailureCopyWith(
          _$_DataLoadFailure value, $Res Function(_$_DataLoadFailure) then) =
      __$$_DataLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataLoadFailureCopyWithImpl<$Res>
    extends _$RepairerProfileStateCopyWithImpl<$Res>
    implements _$$_DataLoadFailureCopyWith<$Res> {
  __$$_DataLoadFailureCopyWithImpl(
      _$_DataLoadFailure _value, $Res Function(_$_DataLoadFailure) _then)
      : super(_value, (v) => _then(v as _$_DataLoadFailure));

  @override
  _$_DataLoadFailure get _value => super._value as _$_DataLoadFailure;
}

/// @nodoc

class _$_DataLoadFailure
    with DiagnosticableTreeMixin
    implements _DataLoadFailure {
  const _$_DataLoadFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepairerProfileState.dataLoadFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RepairerProfileState.dataLoadFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)
        dataLoadSuccess,
    required TResult Function() dataLoadFailure,
    required TResult Function() loading,
  }) {
    return dataLoadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
  }) {
    return dataLoadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (dataLoadFailure != null) {
      return dataLoadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_DataLoadFailure value) dataLoadFailure,
    required TResult Function(_Loading value) loading,
  }) {
    return dataLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
  }) {
    return dataLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (dataLoadFailure != null) {
      return dataLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _DataLoadFailure implements RepairerProfileState {
  const factory _DataLoadFailure() = _$_DataLoadFailure;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$RepairerProfileStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepairerProfileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RepairerProfileState.loading'));
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
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)
        dataLoadSuccess,
    required TResult Function() dataLoadFailure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            IList<ServiceData> serviceData,
            IList<RatingData> ratingData,
            ProviderData provider,
            List<Tuple2<RepairCategory, IList<ServiceData>>> categories)?
        dataLoadSuccess,
    TResult Function()? dataLoadFailure,
    TResult Function()? loading,
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
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_DataLoadFailure value) dataLoadFailure,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_DataLoadFailure value)? dataLoadFailure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RepairerProfileState {
  const factory _Loading() = _$_Loading;
}
