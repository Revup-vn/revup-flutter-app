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
    required TResult Function() started,
    required TResult Function(RepairerSortType sortType) dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RepairerSortType sortType)? dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RepairerSortType sortType)? dropdownListChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DropdownListChanged value) dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
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
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$FindListRepairerEventCopyWithImpl<$Res>
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
    return 'FindListRepairerEvent.started()';
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
    required TResult Function(RepairerSortType sortType) dropdownListChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RepairerSortType sortType)? dropdownListChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RepairerSortType sortType)? dropdownListChanged,
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
    required TResult Function(DropdownListChanged value) dropdownListChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FindListRepairerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$DropdownListChangedCopyWith<$Res> {
  factory _$$DropdownListChangedCopyWith(_$DropdownListChanged value,
          $Res Function(_$DropdownListChanged) then) =
      __$$DropdownListChangedCopyWithImpl<$Res>;
  $Res call({RepairerSortType sortType});
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
              as RepairerSortType,
    ));
  }
}

/// @nodoc

class _$DropdownListChanged implements DropdownListChanged {
  const _$DropdownListChanged({required this.sortType});

  @override
  final RepairerSortType sortType;

  @override
  String toString() {
    return 'FindListRepairerEvent.dropdownListChanged(sortType: $sortType)';
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
    required TResult Function() started,
    required TResult Function(RepairerSortType sortType) dropdownListChanged,
  }) {
    return dropdownListChanged(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RepairerSortType sortType)? dropdownListChanged,
  }) {
    return dropdownListChanged?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RepairerSortType sortType)? dropdownListChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(DropdownListChanged value) dropdownListChanged,
  }) {
    return dropdownListChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DropdownListChanged value)? dropdownListChanged,
  }) {
    return dropdownListChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
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
  const factory DropdownListChanged(
      {required final RepairerSortType sortType}) = _$DropdownListChanged;

  RepairerSortType get sortType;
  @JsonKey(ignore: true)
  _$$DropdownListChangedCopyWith<_$DropdownListChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FindListRepairerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(IList<ProviderData> listProvider) dataLoadSuccess,
    required TResult Function(IList<ProviderData> listProvider) refreshSuccess,
    required TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
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

class _$_Initial implements _Initial {
  const _$_Initial({required this.hasValue});

  @override
  final bool hasValue;

  @override
  String toString() {
    return 'FindListRepairerState.initial(hasValue: $hasValue)';
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
    required TResult Function(IList<ProviderData> listProvider) dataLoadSuccess,
    required TResult Function(IList<ProviderData> listProvider) refreshSuccess,
    required TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) failure,
  }) {
    return initial(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
  }) {
    return initial?.call(hasValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
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
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
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

abstract class _Initial implements FindListRepairerState {
  const factory _Initial({required final bool hasValue}) = _$_Initial;

  bool get hasValue;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataLoadSuccessCopyWith<$Res> {
  factory _$$_DataLoadSuccessCopyWith(
          _$_DataLoadSuccess value, $Res Function(_$_DataLoadSuccess) then) =
      __$$_DataLoadSuccessCopyWithImpl<$Res>;
  $Res call({IList<ProviderData> listProvider});
}

/// @nodoc
class __$$_DataLoadSuccessCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_DataLoadSuccessCopyWith<$Res> {
  __$$_DataLoadSuccessCopyWithImpl(
      _$_DataLoadSuccess _value, $Res Function(_$_DataLoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_DataLoadSuccess));

  @override
  _$_DataLoadSuccess get _value => super._value as _$_DataLoadSuccess;

  @override
  $Res call({
    Object? listProvider = freezed,
  }) {
    return _then(_$_DataLoadSuccess(
      listProvider: listProvider == freezed
          ? _value.listProvider
          : listProvider // ignore: cast_nullable_to_non_nullable
              as IList<ProviderData>,
    ));
  }
}

/// @nodoc

class _$_DataLoadSuccess implements _DataLoadSuccess {
  const _$_DataLoadSuccess({required this.listProvider});

  @override
  final IList<ProviderData> listProvider;

  @override
  String toString() {
    return 'FindListRepairerState.dataLoadSuccess(listProvider: $listProvider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.listProvider, listProvider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listProvider));

  @JsonKey(ignore: true)
  @override
  _$$_DataLoadSuccessCopyWith<_$_DataLoadSuccess> get copyWith =>
      __$$_DataLoadSuccessCopyWithImpl<_$_DataLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(IList<ProviderData> listProvider) dataLoadSuccess,
    required TResult Function(IList<ProviderData> listProvider) refreshSuccess,
    required TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) failure,
  }) {
    return dataLoadSuccess(listProvider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
  }) {
    return dataLoadSuccess?.call(listProvider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (dataLoadSuccess != null) {
      return dataLoadSuccess(listProvider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return dataLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return dataLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (dataLoadSuccess != null) {
      return dataLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DataLoadSuccess implements FindListRepairerState {
  const factory _DataLoadSuccess(
      {required final IList<ProviderData> listProvider}) = _$_DataLoadSuccess;

  IList<ProviderData> get listProvider;
  @JsonKey(ignore: true)
  _$$_DataLoadSuccessCopyWith<_$_DataLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshSuccessCopyWith<$Res> {
  factory _$$_RefreshSuccessCopyWith(
          _$_RefreshSuccess value, $Res Function(_$_RefreshSuccess) then) =
      __$$_RefreshSuccessCopyWithImpl<$Res>;
  $Res call({IList<ProviderData> listProvider});
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
          ? _value.listProvider
          : listProvider // ignore: cast_nullable_to_non_nullable
              as IList<ProviderData>,
    ));
  }
}

/// @nodoc

class _$_RefreshSuccess implements _RefreshSuccess {
  const _$_RefreshSuccess({required this.listProvider});

  @override
  final IList<ProviderData> listProvider;

  @override
  String toString() {
    return 'FindListRepairerState.refreshSuccess(listProvider: $listProvider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshSuccess &&
            const DeepCollectionEquality()
                .equals(other.listProvider, listProvider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listProvider));

  @JsonKey(ignore: true)
  @override
  _$$_RefreshSuccessCopyWith<_$_RefreshSuccess> get copyWith =>
      __$$_RefreshSuccessCopyWithImpl<_$_RefreshSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(IList<ProviderData> listProvider) dataLoadSuccess,
    required TResult Function(IList<ProviderData> listProvider) refreshSuccess,
    required TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) failure,
  }) {
    return refreshSuccess(listProvider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
  }) {
    return refreshSuccess?.call(listProvider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
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
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return refreshSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return refreshSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
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
      {required final IList<ProviderData> listProvider}) = _$_RefreshSuccess;

  IList<ProviderData> get listProvider;
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
  $Res call({IList<ProviderData> listProvider, RepairerSortType sortType});
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
          ? _value.listProvider
          : listProvider // ignore: cast_nullable_to_non_nullable
              as IList<ProviderData>,
      sortType: sortType == freezed
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as RepairerSortType,
    ));
  }
}

/// @nodoc

class _$_DropdownListChangedSuccess implements _DropdownListChangedSuccess {
  const _$_DropdownListChangedSuccess(
      {required this.listProvider, required this.sortType});

  @override
  final IList<ProviderData> listProvider;
  @override
  final RepairerSortType sortType;

  @override
  String toString() {
    return 'FindListRepairerState.dropdownListChangedSuccess(listProvider: $listProvider, sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropdownListChangedSuccess &&
            const DeepCollectionEquality()
                .equals(other.listProvider, listProvider) &&
            const DeepCollectionEquality().equals(other.sortType, sortType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listProvider),
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
    required TResult Function(IList<ProviderData> listProvider) dataLoadSuccess,
    required TResult Function(IList<ProviderData> listProvider) refreshSuccess,
    required TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) failure,
  }) {
    return dropdownListChangedSuccess(listProvider, sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
  }) {
    return dropdownListChangedSuccess?.call(listProvider, sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
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
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return dropdownListChangedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return dropdownListChangedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
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
          {required final IList<ProviderData> listProvider,
          required final RepairerSortType sortType}) =
      _$_DropdownListChangedSuccess;

  IList<ProviderData> get listProvider;
  RepairerSortType get sortType;
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

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FindListRepairerState.loading()';
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
    required TResult Function(IList<ProviderData> listProvider) dataLoadSuccess,
    required TResult Function(IList<ProviderData> listProvider) refreshSuccess,
    required TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
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
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
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

abstract class _Loading implements FindListRepairerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$FindListRepairerStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Failure(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FindListRepairerState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasValue) initial,
    required TResult Function(IList<ProviderData> listProvider) dataLoadSuccess,
    required TResult Function(IList<ProviderData> listProvider) refreshSuccess,
    required TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)
        dropdownListChangedSuccess,
    required TResult Function() loading,
    required TResult Function(String? errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasValue)? initial,
    TResult Function(IList<ProviderData> listProvider)? dataLoadSuccess,
    TResult Function(IList<ProviderData> listProvider)? refreshSuccess,
    TResult Function(
            IList<ProviderData> listProvider, RepairerSortType sortType)?
        dropdownListChangedSuccess,
    TResult Function()? loading,
    TResult Function(String? errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoadSuccess value) dataLoadSuccess,
    required TResult Function(_RefreshSuccess value) refreshSuccess,
    required TResult Function(_DropdownListChangedSuccess value)
        dropdownListChangedSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoadSuccess value)? dataLoadSuccess,
    TResult Function(_RefreshSuccess value)? refreshSuccess,
    TResult Function(_DropdownListChangedSuccess value)?
        dropdownListChangedSuccess,
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

abstract class _Failure implements FindListRepairerState {
  const factory _Failure({required final String? errorMessage}) = _$_Failure;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
