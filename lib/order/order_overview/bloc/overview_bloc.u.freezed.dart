// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'overview_bloc.u.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String totalServiceFee) selectedProduct,
    required TResult Function(bool currentStateButton) arrowButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedProduct value) selectedProduct,
    required TResult Function(_ArrowButtonPressed value) arrowButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewEventCopyWith<$Res> {
  factory $OverviewEventCopyWith(
          OverviewEvent value, $Res Function(OverviewEvent) then) =
      _$OverviewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OverviewEventCopyWithImpl<$Res>
    implements $OverviewEventCopyWith<$Res> {
  _$OverviewEventCopyWithImpl(this._value, this._then);

  final OverviewEvent _value;
  // ignore: unused_field
  final $Res Function(OverviewEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$OverviewEventCopyWithImpl<$Res>
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
    return 'OverviewEvent.started()';
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
    required TResult Function(String totalServiceFee) selectedProduct,
    required TResult Function(bool currentStateButton) arrowButtonPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
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
    required TResult Function(_SelectedProduct value) selectedProduct,
    required TResult Function(_ArrowButtonPressed value) arrowButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OverviewEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SelectedProductCopyWith<$Res> {
  factory _$$_SelectedProductCopyWith(
          _$_SelectedProduct value, $Res Function(_$_SelectedProduct) then) =
      __$$_SelectedProductCopyWithImpl<$Res>;
  $Res call({String totalServiceFee});
}

/// @nodoc
class __$$_SelectedProductCopyWithImpl<$Res>
    extends _$OverviewEventCopyWithImpl<$Res>
    implements _$$_SelectedProductCopyWith<$Res> {
  __$$_SelectedProductCopyWithImpl(
      _$_SelectedProduct _value, $Res Function(_$_SelectedProduct) _then)
      : super(_value, (v) => _then(v as _$_SelectedProduct));

  @override
  _$_SelectedProduct get _value => super._value as _$_SelectedProduct;

  @override
  $Res call({
    Object? totalServiceFee = freezed,
  }) {
    return _then(_$_SelectedProduct(
      totalServiceFee: totalServiceFee == freezed
          ? _value.totalServiceFee
          : totalServiceFee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectedProduct implements _SelectedProduct {
  const _$_SelectedProduct({required this.totalServiceFee});

  @override
  final String totalServiceFee;

  @override
  String toString() {
    return 'OverviewEvent.selectedProduct(totalServiceFee: $totalServiceFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedProduct &&
            const DeepCollectionEquality()
                .equals(other.totalServiceFee, totalServiceFee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(totalServiceFee));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedProductCopyWith<_$_SelectedProduct> get copyWith =>
      __$$_SelectedProductCopyWithImpl<_$_SelectedProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String totalServiceFee) selectedProduct,
    required TResult Function(bool currentStateButton) arrowButtonPressed,
  }) {
    return selectedProduct(totalServiceFee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
  }) {
    return selectedProduct?.call(totalServiceFee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
    required TResult orElse(),
  }) {
    if (selectedProduct != null) {
      return selectedProduct(totalServiceFee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedProduct value) selectedProduct,
    required TResult Function(_ArrowButtonPressed value) arrowButtonPressed,
  }) {
    return selectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
  }) {
    return selectedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
    required TResult orElse(),
  }) {
    if (selectedProduct != null) {
      return selectedProduct(this);
    }
    return orElse();
  }
}

abstract class _SelectedProduct implements OverviewEvent {
  const factory _SelectedProduct({required final String totalServiceFee}) =
      _$_SelectedProduct;

  String get totalServiceFee;
  @JsonKey(ignore: true)
  _$$_SelectedProductCopyWith<_$_SelectedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ArrowButtonPressedCopyWith<$Res> {
  factory _$$_ArrowButtonPressedCopyWith(_$_ArrowButtonPressed value,
          $Res Function(_$_ArrowButtonPressed) then) =
      __$$_ArrowButtonPressedCopyWithImpl<$Res>;
  $Res call({bool currentStateButton});
}

/// @nodoc
class __$$_ArrowButtonPressedCopyWithImpl<$Res>
    extends _$OverviewEventCopyWithImpl<$Res>
    implements _$$_ArrowButtonPressedCopyWith<$Res> {
  __$$_ArrowButtonPressedCopyWithImpl(
      _$_ArrowButtonPressed _value, $Res Function(_$_ArrowButtonPressed) _then)
      : super(_value, (v) => _then(v as _$_ArrowButtonPressed));

  @override
  _$_ArrowButtonPressed get _value => super._value as _$_ArrowButtonPressed;

  @override
  $Res call({
    Object? currentStateButton = freezed,
  }) {
    return _then(_$_ArrowButtonPressed(
      currentStateButton: currentStateButton == freezed
          ? _value.currentStateButton
          : currentStateButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ArrowButtonPressed implements _ArrowButtonPressed {
  const _$_ArrowButtonPressed({required this.currentStateButton});

  @override
  final bool currentStateButton;

  @override
  String toString() {
    return 'OverviewEvent.arrowButtonPressed(currentStateButton: $currentStateButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArrowButtonPressed &&
            const DeepCollectionEquality()
                .equals(other.currentStateButton, currentStateButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentStateButton));

  @JsonKey(ignore: true)
  @override
  _$$_ArrowButtonPressedCopyWith<_$_ArrowButtonPressed> get copyWith =>
      __$$_ArrowButtonPressedCopyWithImpl<_$_ArrowButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String totalServiceFee) selectedProduct,
    required TResult Function(bool currentStateButton) arrowButtonPressed,
  }) {
    return arrowButtonPressed(currentStateButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
  }) {
    return arrowButtonPressed?.call(currentStateButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String totalServiceFee)? selectedProduct,
    TResult Function(bool currentStateButton)? arrowButtonPressed,
    required TResult orElse(),
  }) {
    if (arrowButtonPressed != null) {
      return arrowButtonPressed(currentStateButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedProduct value) selectedProduct,
    required TResult Function(_ArrowButtonPressed value) arrowButtonPressed,
  }) {
    return arrowButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
  }) {
    return arrowButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedProduct value)? selectedProduct,
    TResult Function(_ArrowButtonPressed value)? arrowButtonPressed,
    required TResult orElse(),
  }) {
    if (arrowButtonPressed != null) {
      return arrowButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _ArrowButtonPressed implements OverviewEvent {
  const factory _ArrowButtonPressed({required final bool currentStateButton}) =
      _$_ArrowButtonPressed;

  bool get currentStateButton;
  @JsonKey(ignore: true)
  _$$_ArrowButtonPressedCopyWith<_$_ArrowButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String totalFeeService, bool ready) ready,
    required TResult Function(bool showListFee) showListFee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_ShowListFee value) showListFee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewStateCopyWith<$Res> {
  factory $OverviewStateCopyWith(
          OverviewState value, $Res Function(OverviewState) then) =
      _$OverviewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OverviewStateCopyWithImpl<$Res>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._value, this._then);

  final OverviewState _value;
  // ignore: unused_field
  final $Res Function(OverviewState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$OverviewStateCopyWithImpl<$Res>
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
    return 'OverviewState.initial()';
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
    required TResult Function(String totalFeeService, bool ready) ready,
    required TResult Function(bool showListFee) showListFee,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
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
    required TResult Function(_Ready value) ready,
    required TResult Function(_ShowListFee value) showListFee,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OverviewState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  $Res call({String totalFeeService, bool ready});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res> extends _$OverviewStateCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;

  @override
  $Res call({
    Object? totalFeeService = freezed,
    Object? ready = freezed,
  }) {
    return _then(_$_Ready(
      totalFeeService: totalFeeService == freezed
          ? _value.totalFeeService
          : totalFeeService // ignore: cast_nullable_to_non_nullable
              as String,
      ready: ready == freezed
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready({required this.totalFeeService, required this.ready});

  @override
  final String totalFeeService;
  @override
  final bool ready;

  @override
  String toString() {
    return 'OverviewState.ready(totalFeeService: $totalFeeService, ready: $ready)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready &&
            const DeepCollectionEquality()
                .equals(other.totalFeeService, totalFeeService) &&
            const DeepCollectionEquality().equals(other.ready, ready));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalFeeService),
      const DeepCollectionEquality().hash(ready));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String totalFeeService, bool ready) ready,
    required TResult Function(bool showListFee) showListFee,
  }) {
    return ready(totalFeeService, this.ready);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
  }) {
    return ready?.call(totalFeeService, this.ready);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(totalFeeService, this.ready);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_ShowListFee value) showListFee,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements OverviewState {
  const factory _Ready(
      {required final String totalFeeService,
      required final bool ready}) = _$_Ready;

  String get totalFeeService;
  bool get ready;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowListFeeCopyWith<$Res> {
  factory _$$_ShowListFeeCopyWith(
          _$_ShowListFee value, $Res Function(_$_ShowListFee) then) =
      __$$_ShowListFeeCopyWithImpl<$Res>;
  $Res call({bool showListFee});
}

/// @nodoc
class __$$_ShowListFeeCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res>
    implements _$$_ShowListFeeCopyWith<$Res> {
  __$$_ShowListFeeCopyWithImpl(
      _$_ShowListFee _value, $Res Function(_$_ShowListFee) _then)
      : super(_value, (v) => _then(v as _$_ShowListFee));

  @override
  _$_ShowListFee get _value => super._value as _$_ShowListFee;

  @override
  $Res call({
    Object? showListFee = freezed,
  }) {
    return _then(_$_ShowListFee(
      showListFee: showListFee == freezed
          ? _value.showListFee
          : showListFee // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowListFee implements _ShowListFee {
  const _$_ShowListFee({required this.showListFee});

  @override
  final bool showListFee;

  @override
  String toString() {
    return 'OverviewState.showListFee(showListFee: $showListFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowListFee &&
            const DeepCollectionEquality()
                .equals(other.showListFee, showListFee));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(showListFee));

  @JsonKey(ignore: true)
  @override
  _$$_ShowListFeeCopyWith<_$_ShowListFee> get copyWith =>
      __$$_ShowListFeeCopyWithImpl<_$_ShowListFee>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String totalFeeService, bool ready) ready,
    required TResult Function(bool showListFee) showListFee,
  }) {
    return showListFee(this.showListFee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
  }) {
    return showListFee?.call(this.showListFee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String totalFeeService, bool ready)? ready,
    TResult Function(bool showListFee)? showListFee,
    required TResult orElse(),
  }) {
    if (showListFee != null) {
      return showListFee(this.showListFee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_ShowListFee value) showListFee,
  }) {
    return showListFee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
  }) {
    return showListFee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_ShowListFee value)? showListFee,
    required TResult orElse(),
  }) {
    if (showListFee != null) {
      return showListFee(this);
    }
    return orElse();
  }
}

abstract class _ShowListFee implements OverviewState {
  const factory _ShowListFee({required final bool showListFee}) =
      _$_ShowListFee;

  bool get showListFee;
  @JsonKey(ignore: true)
  _$$_ShowListFeeCopyWith<_$_ShowListFee> get copyWith =>
      throw _privateConstructorUsedError;
}
