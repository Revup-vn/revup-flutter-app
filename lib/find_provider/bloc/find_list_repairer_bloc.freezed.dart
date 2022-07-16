// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'find_list_repairer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FindListRepairerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) started,
    required TResult Function() refresh,
    required TResult Function(String value) onChanged,
    required TResult Function() onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnTap value) onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindListRepairerEventCopyWith<$Res> {
  factory $FindListRepairerEventCopyWith(FindListRepairerEvent value,
          $Res Function(FindListRepairerEvent) then) =
      _$FindListRepairerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindListRepairerEventCopyWithImpl<$Res>
    implements $FindListRepairerEventCopyWith<$Res> {
  _$FindListRepairerEventCopyWithImpl(this._value, this._then);

  final FindListRepairerEvent _value;
  // ignore: unused_field
  final $Res Function(FindListRepairerEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
  $Res call({bool hasValue});
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$FindListRepairerEventCopyWithImpl<$Res>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, (v) => _then(v as _$Started));

  @override
  _$Started get _value => super._value as _$Started;

  @override
  $Res call({
    Object? hasValue = freezed,
  }) {
    return _then(_$Started(
      hasValue: hasValue == freezed
          ? _value.hasValue
          : hasValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Started with DiagnosticableTreeMixin implements Started {
  const _$Started({required this.hasValue});

  @override
  final bool hasValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerEvent.started(hasValue: $hasValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindListRepairerEvent.started'))
      ..add(DiagnosticsProperty('hasValue', hasValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Started &&
            const DeepCollectionEquality().equals(other.hasValue, hasValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasValue));

  @JsonKey(ignore: true)
  @override
  _$$StartedCopyWith<_$Started> get copyWith =>
      __$$StartedCopyWithImpl<_$Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) started,
    required TResult Function() refresh,
    required TResult Function(String value) onChanged,
    required TResult Function() onTap,
  }) {
    return started(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
  }) {
    return started?.call(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(hasValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnTap value) onTap,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements FindListRepairerEvent {
  const factory Started({required final bool hasValue}) = _$Started;

  bool get hasValue;
  @JsonKey(ignore: true)
  _$$StartedCopyWith<_$Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res>
    extends _$FindListRepairerEventCopyWithImpl<$Res>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, (v) => _then(v as _$Refresh));

  @override
  _$Refresh get _value => super._value as _$Refresh;
}

/// @nodoc

class _$Refresh with DiagnosticableTreeMixin implements Refresh {
  const _$Refresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FindListRepairerEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) started,
    required TResult Function() refresh,
    required TResult Function(String value) onChanged,
    required TResult Function() onTap,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnTap value) onTap,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements FindListRepairerEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$OnChangedCopyWith<$Res> {
  factory _$$OnChangedCopyWith(
          _$OnChanged value, $Res Function(_$OnChanged) then) =
      __$$OnChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$OnChangedCopyWithImpl<$Res>
    extends _$FindListRepairerEventCopyWithImpl<$Res>
    implements _$$OnChangedCopyWith<$Res> {
  __$$OnChangedCopyWithImpl(
      _$OnChanged _value, $Res Function(_$OnChanged) _then)
      : super(_value, (v) => _then(v as _$OnChanged));

  @override
  _$OnChanged get _value => super._value as _$OnChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$OnChanged(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnChanged with DiagnosticableTreeMixin implements OnChanged {
  const _$OnChanged({required this.value});

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerEvent.onChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindListRepairerEvent.onChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$OnChangedCopyWith<_$OnChanged> get copyWith =>
      __$$OnChangedCopyWithImpl<_$OnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) started,
    required TResult Function() refresh,
    required TResult Function(String value) onChanged,
    required TResult Function() onTap,
  }) {
    return onChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
  }) {
    return onChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnTap value) onTap,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class OnChanged implements FindListRepairerEvent {
  const factory OnChanged({required final String value}) = _$OnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$OnChangedCopyWith<_$OnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnTapCopyWith<$Res> {
  factory _$$OnTapCopyWith(_$OnTap value, $Res Function(_$OnTap) then) =
      __$$OnTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnTapCopyWithImpl<$Res>
    extends _$FindListRepairerEventCopyWithImpl<$Res>
    implements _$$OnTapCopyWith<$Res> {
  __$$OnTapCopyWithImpl(_$OnTap _value, $Res Function(_$OnTap) _then)
      : super(_value, (v) => _then(v as _$OnTap));

  @override
  _$OnTap get _value => super._value as _$OnTap;
}

/// @nodoc

class _$OnTap with DiagnosticableTreeMixin implements OnTap {
  const _$OnTap();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerEvent.onTap()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FindListRepairerEvent.onTap'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) started,
    required TResult Function() refresh,
    required TResult Function(String value) onChanged,
    required TResult Function() onTap,
  }) {
    return onTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
  }) {
    return onTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String value)? onChanged,
    TResult Function()? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnChanged value) onChanged,
    required TResult Function(OnTap value) onTap,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
  }) {
    return onTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(OnChanged value)? onChanged,
    TResult Function(OnTap value)? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class OnTap implements FindListRepairerEvent {
  const factory OnTap() = _$OnTap;
}

/// @nodoc
mixin _$FindListRepairerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listItems) refreshCompleted,
    required TResult Function(String value) valueChanged,
    required TResult Function() pickARepairer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reload value) refreshCompleted,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_PickARepairer value) pickARepairer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindListRepairerStateCopyWith<$Res> {
  factory $FindListRepairerStateCopyWith(FindListRepairerState value,
          $Res Function(FindListRepairerState) then) =
      _$FindListRepairerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindListRepairerStateCopyWithImpl<$Res>
    implements $FindListRepairerStateCopyWith<$Res> {
  _$FindListRepairerStateCopyWithImpl(this._value, this._then);

  final FindListRepairerState _value;
  // ignore: unused_field
  final $Res Function(FindListRepairerState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  $Res call({bool hasValue});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? hasValue = freezed,
  }) {
    return _then(_$_Initial(
      hasValue: hasValue == freezed
          ? _value.hasValue
          : hasValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({required this.hasValue});

  @override
  final bool hasValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerState.initial(hasValue: $hasValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindListRepairerState.initial'))
      ..add(DiagnosticsProperty('hasValue', hasValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.hasValue, hasValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasValue));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listItems) refreshCompleted,
    required TResult Function(String value) valueChanged,
    required TResult Function() pickARepairer,
  }) {
    return initial(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
  }) {
    return initial?.call(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(hasValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reload value) refreshCompleted,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_PickARepairer value) pickARepairer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FindListRepairerState {
  const factory _Initial({required final bool hasValue}) = _$_Initial;

  bool get hasValue;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReloadCopyWith<$Res> {
  factory _$$_ReloadCopyWith(_$_Reload value, $Res Function(_$_Reload) then) =
      __$$_ReloadCopyWithImpl<$Res>;
  $Res call({List<List<String>> listItems});
}

/// @nodoc
class __$$_ReloadCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_ReloadCopyWith<$Res> {
  __$$_ReloadCopyWithImpl(_$_Reload _value, $Res Function(_$_Reload) _then)
      : super(_value, (v) => _then(v as _$_Reload));

  @override
  _$_Reload get _value => super._value as _$_Reload;

  @override
  $Res call({
    Object? listItems = freezed,
  }) {
    return _then(_$_Reload(
      listItems: listItems == freezed
          ? _value._listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$_Reload with DiagnosticableTreeMixin implements _Reload {
  const _$_Reload({required final List<List<String>> listItems})
      : _listItems = listItems;

  final List<List<String>> _listItems;
  @override
  List<List<String>> get listItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerState.refreshCompleted(listItems: $listItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'FindListRepairerState.refreshCompleted'))
      ..add(DiagnosticsProperty('listItems', listItems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reload &&
            const DeepCollectionEquality()
                .equals(other._listItems, _listItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listItems));

  @JsonKey(ignore: true)
  @override
  _$$_ReloadCopyWith<_$_Reload> get copyWith =>
      __$$_ReloadCopyWithImpl<_$_Reload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listItems) refreshCompleted,
    required TResult Function(String value) valueChanged,
    required TResult Function() pickARepairer,
  }) {
    return refreshCompleted(listItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
  }) {
    return refreshCompleted?.call(listItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
    required TResult orElse(),
  }) {
    if (refreshCompleted != null) {
      return refreshCompleted(listItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reload value) refreshCompleted,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_PickARepairer value) pickARepairer,
  }) {
    return refreshCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
  }) {
    return refreshCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
    required TResult orElse(),
  }) {
    if (refreshCompleted != null) {
      return refreshCompleted(this);
    }
    return orElse();
  }
}

abstract class _Reload implements FindListRepairerState {
  const factory _Reload({required final List<List<String>> listItems}) =
      _$_Reload;

  List<List<String>> get listItems;
  @JsonKey(ignore: true)
  _$$_ReloadCopyWith<_$_Reload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValueChangedCopyWith<$Res> {
  factory _$$_ValueChangedCopyWith(
          _$_ValueChanged value, $Res Function(_$_ValueChanged) then) =
      __$$_ValueChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_ValueChangedCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_ValueChangedCopyWith<$Res> {
  __$$_ValueChangedCopyWithImpl(
      _$_ValueChanged _value, $Res Function(_$_ValueChanged) _then)
      : super(_value, (v) => _then(v as _$_ValueChanged));

  @override
  _$_ValueChanged get _value => super._value as _$_ValueChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ValueChanged(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValueChanged with DiagnosticableTreeMixin implements _ValueChanged {
  const _$_ValueChanged({required this.value});

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerState.valueChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindListRepairerState.valueChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValueChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ValueChangedCopyWith<_$_ValueChanged> get copyWith =>
      __$$_ValueChangedCopyWithImpl<_$_ValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listItems) refreshCompleted,
    required TResult Function(String value) valueChanged,
    required TResult Function() pickARepairer,
  }) {
    return valueChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
  }) {
    return valueChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reload value) refreshCompleted,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_PickARepairer value) pickARepairer,
  }) {
    return valueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
  }) {
    return valueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(this);
    }
    return orElse();
  }
}

abstract class _ValueChanged implements FindListRepairerState {
  const factory _ValueChanged({required final String value}) = _$_ValueChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_ValueChangedCopyWith<_$_ValueChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickARepairerCopyWith<$Res> {
  factory _$$_PickARepairerCopyWith(
          _$_PickARepairer value, $Res Function(_$_PickARepairer) then) =
      __$$_PickARepairerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PickARepairerCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_PickARepairerCopyWith<$Res> {
  __$$_PickARepairerCopyWithImpl(
      _$_PickARepairer _value, $Res Function(_$_PickARepairer) _then)
      : super(_value, (v) => _then(v as _$_PickARepairer));

  @override
  _$_PickARepairer get _value => super._value as _$_PickARepairer;
}

/// @nodoc

class _$_PickARepairer with DiagnosticableTreeMixin implements _PickARepairer {
  const _$_PickARepairer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerState.pickARepairer()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'FindListRepairerState.pickARepairer'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PickARepairer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listItems) refreshCompleted,
    required TResult Function(String value) valueChanged,
    required TResult Function() pickARepairer,
  }) {
    return pickARepairer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
  }) {
    return pickARepairer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listItems)? refreshCompleted,
    TResult Function(String value)? valueChanged,
    TResult Function()? pickARepairer,
    required TResult orElse(),
  }) {
    if (pickARepairer != null) {
      return pickARepairer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Reload value) refreshCompleted,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_PickARepairer value) pickARepairer,
  }) {
    return pickARepairer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
  }) {
    return pickARepairer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Reload value)? refreshCompleted,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_PickARepairer value)? pickARepairer,
    required TResult orElse(),
  }) {
    if (pickARepairer != null) {
      return pickARepairer(this);
    }
    return orElse();
  }
}

abstract class _PickARepairer implements FindListRepairerState {
  const factory _PickARepairer() = _$_PickARepairer;
}
