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
    required TResult Function(String sortType) dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(DropdownListChanged value) dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
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
    required TResult Function(String sortType) dropdownListChanged,
  }) {
    return started(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
  }) {
    return started?.call(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
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
    required TResult Function(DropdownListChanged value) dropdownListChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
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
    required TResult Function(String sortType) dropdownListChanged,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
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
    required TResult Function(DropdownListChanged value) dropdownListChanged,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
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
abstract class _$$DropdownListChangedCopyWith<$Res> {
  factory _$$DropdownListChangedCopyWith(_$DropdownListChanged value,
          $Res Function(_$DropdownListChanged) then) =
      __$$DropdownListChangedCopyWithImpl<$Res>;
  $Res call({String sortType});
}

/// @nodoc
class __$$DropdownListChangedCopyWithImpl<$Res>
    extends _$FindListRepairerEventCopyWithImpl<$Res>
    implements _$$DropdownListChangedCopyWith<$Res> {
  __$$DropdownListChangedCopyWithImpl(
      _$DropdownListChanged _value, $Res Function(_$DropdownListChanged) _then)
      : super(_value, (v) => _then(v as _$DropdownListChanged));

  @override
  _$DropdownListChanged get _value => super._value as _$DropdownListChanged;

  @override
  $Res call({
    Object? sortType = freezed,
  }) {
    return _then(_$DropdownListChanged(
      sortType: sortType == freezed
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DropdownListChanged
    with DiagnosticableTreeMixin
    implements DropdownListChanged {
  const _$DropdownListChanged({required this.sortType});

  @override
  final String sortType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerEvent.dropdownListChanged(sortType: $sortType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FindListRepairerEvent.dropdownListChanged'))
      ..add(DiagnosticsProperty('sortType', sortType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownListChanged &&
            const DeepCollectionEquality().equals(other.sortType, sortType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sortType));

  @JsonKey(ignore: true)
  @override
  _$$DropdownListChangedCopyWith<_$DropdownListChanged> get copyWith =>
      __$$DropdownListChangedCopyWithImpl<_$DropdownListChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) started,
    required TResult Function() refresh,
    required TResult Function(String sortType) dropdownListChanged,
  }) {
    return dropdownListChanged(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
  }) {
    return dropdownListChanged?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? started,
    TResult Function()? refresh,
    TResult Function(String sortType)? dropdownListChanged,
    required TResult orElse(),
  }) {
    if (dropdownListChanged != null) {
      return dropdownListChanged(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(DropdownListChanged value) dropdownListChanged,
  }) {
    return dropdownListChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
  }) {
    return dropdownListChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
    required TResult orElse(),
  }) {
    if (dropdownListChanged != null) {
      return dropdownListChanged(this);
    }
    return orElse();
  }
}

abstract class DropdownListChanged implements FindListRepairerEvent {
  const factory DropdownListChanged({required final String sortType}) =
      _$DropdownListChanged;

  String get sortType;
  @JsonKey(ignore: true)
  _$$DropdownListChangedCopyWith<_$DropdownListChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FindListRepairerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listProvider) refreshSuccess,
    required TResult Function(List<List<String>> listProvider, String sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
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
    required TResult Function(List<List<String>> listProvider) refreshSuccess,
    required TResult Function(List<List<String>> listProvider, String sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
  }) {
    return initial(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
  }) {
    return initial?.call(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
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
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
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
abstract class _$$_RefreshSuccessCopyWith<$Res> {
  factory _$$_RefreshSuccessCopyWith(
          _$_RefreshSuccess value, $Res Function(_$_RefreshSuccess) then) =
      __$$_RefreshSuccessCopyWithImpl<$Res>;
  $Res call({List<List<String>> listProvider});
}

/// @nodoc
class __$$_RefreshSuccessCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_RefreshSuccessCopyWith<$Res> {
  __$$_RefreshSuccessCopyWithImpl(
      _$_RefreshSuccess _value, $Res Function(_$_RefreshSuccess) _then)
      : super(_value, (v) => _then(v as _$_RefreshSuccess));

  @override
  _$_RefreshSuccess get _value => super._value as _$_RefreshSuccess;

  @override
  $Res call({
    Object? listProvider = freezed,
  }) {
    return _then(_$_RefreshSuccess(
      listProvider: listProvider == freezed
          ? _value._listProvider
          : listProvider // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$_RefreshSuccess
    with DiagnosticableTreeMixin
    implements _RefreshSuccess {
  const _$_RefreshSuccess({required final List<List<String>> listProvider})
      : _listProvider = listProvider;

  final List<List<String>> _listProvider;
  @override
  List<List<String>> get listProvider {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProvider);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerState.refreshSuccess(listProvider: $listProvider)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindListRepairerState.refreshSuccess'))
      ..add(DiagnosticsProperty('listProvider', listProvider));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshSuccess &&
            const DeepCollectionEquality()
                .equals(other._listProvider, _listProvider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listProvider));

  @JsonKey(ignore: true)
  @override
  _$$_RefreshSuccessCopyWith<_$_RefreshSuccess> get copyWith =>
      __$$_RefreshSuccessCopyWithImpl<_$_RefreshSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listProvider) refreshSuccess,
    required TResult Function(List<List<String>> listProvider, String sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
  }) {
    return refreshSuccess(listProvider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
  }) {
    return refreshSuccess?.call(listProvider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (refreshSuccess != null) {
      return refreshSuccess(listProvider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return refreshSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return refreshSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (refreshSuccess != null) {
      return refreshSuccess(this);
    }
    return orElse();
  }
}

abstract class _RefreshSuccess implements FindListRepairerState {
  const factory _RefreshSuccess(
      {required final List<List<String>> listProvider}) = _$_RefreshSuccess;

  List<List<String>> get listProvider;
  @JsonKey(ignore: true)
  _$$_RefreshSuccessCopyWith<_$_RefreshSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DropdownListChangedSuccessCopyWith<$Res> {
  factory _$$_DropdownListChangedSuccessCopyWith(
          _$_DropdownListChangedSuccess value,
          $Res Function(_$_DropdownListChangedSuccess) then) =
      __$$_DropdownListChangedSuccessCopyWithImpl<$Res>;
  $Res call({List<List<String>> listProvider, String sortType});
}

/// @nodoc
class __$$_DropdownListChangedSuccessCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_DropdownListChangedSuccessCopyWith<$Res> {
  __$$_DropdownListChangedSuccessCopyWithImpl(
      _$_DropdownListChangedSuccess _value,
      $Res Function(_$_DropdownListChangedSuccess) _then)
      : super(_value, (v) => _then(v as _$_DropdownListChangedSuccess));

  @override
  _$_DropdownListChangedSuccess get _value =>
      super._value as _$_DropdownListChangedSuccess;

  @override
  $Res call({
    Object? listProvider = freezed,
    Object? sortType = freezed,
  }) {
    return _then(_$_DropdownListChangedSuccess(
      listProvider: listProvider == freezed
          ? _value._listProvider
          : listProvider // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      sortType: sortType == freezed
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DropdownListChangedSuccess
    with DiagnosticableTreeMixin
    implements _DropdownListChangedSuccess {
  const _$_DropdownListChangedSuccess(
      {required final List<List<String>> listProvider, required this.sortType})
      : _listProvider = listProvider;

  final List<List<String>> _listProvider;
  @override
  List<List<String>> get listProvider {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProvider);
  }

  @override
  final String sortType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindListRepairerState.dropdownListChangedSuccess(listProvider: $listProvider, sortType: $sortType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FindListRepairerState.dropdownListChangedSuccess'))
      ..add(DiagnosticsProperty('listProvider', listProvider))
      ..add(DiagnosticsProperty('sortType', sortType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropdownListChangedSuccess &&
            const DeepCollectionEquality()
                .equals(other._listProvider, _listProvider) &&
            const DeepCollectionEquality().equals(other.sortType, sortType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listProvider),
      const DeepCollectionEquality().hash(sortType));

  @JsonKey(ignore: true)
  @override
  _$$_DropdownListChangedSuccessCopyWith<_$_DropdownListChangedSuccess>
      get copyWith => __$$_DropdownListChangedSuccessCopyWithImpl<
          _$_DropdownListChangedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listProvider) refreshSuccess,
    required TResult Function(List<List<String>> listProvider, String sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
  }) {
    return dropdownListChangedSuccess(listProvider, sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
  }) {
    return dropdownListChangedSuccess?.call(listProvider, sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (dropdownListChangedSuccess != null) {
      return dropdownListChangedSuccess(listProvider, sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return dropdownListChangedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return dropdownListChangedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (dropdownListChangedSuccess != null) {
      return dropdownListChangedSuccess(this);
    }
    return orElse();
  }
}

abstract class _DropdownListChangedSuccess implements FindListRepairerState {
  const factory _DropdownListChangedSuccess(
      {required final List<List<String>> listProvider,
      required final String sortType}) = _$_DropdownListChangedSuccess;

  List<List<String>> get listProvider;
  String get sortType;
  @JsonKey(ignore: true)
  _$$_DropdownListChangedSuccessCopyWith<_$_DropdownListChangedSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
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
    return 'FindListRepairerState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FindListRepairerState.loading'));
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
    required TResult Function(bool hasValue) initial,
    required TResult Function(List<List<String>> listProvider) refreshSuccess,
    required TResult Function(List<List<String>> listProvider, String sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(List<List<String>> listProvider)? refreshSuccess,
    TResult Function(List<List<String>> listProvider, String sortType)?
        dropdownListChangedSuccess,
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
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FindListRepairerState {
  const factory _Loading() = _$_Loading;
}
