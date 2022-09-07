// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_payment_bloc.u.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoicePaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isPayOnline) changePaymentMethod,
    required TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)
        sumbitPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_SubmitPayment value) sumbitPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicePaymentEventCopyWith<$Res> {
  factory $InvoicePaymentEventCopyWith(
          InvoicePaymentEvent value, $Res Function(InvoicePaymentEvent) then) =
      _$InvoicePaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvoicePaymentEventCopyWithImpl<$Res>
    implements $InvoicePaymentEventCopyWith<$Res> {
  _$InvoicePaymentEventCopyWithImpl(this._value, this._then);

  final InvoicePaymentEvent _value;
  // ignore: unused_field
  final $Res Function(InvoicePaymentEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$InvoicePaymentEventCopyWithImpl<$Res>
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
    return 'InvoicePaymentEvent.started()';
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
    required TResult Function(bool isPayOnline) changePaymentMethod,
    required TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)
        sumbitPayment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
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
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_SubmitPayment value) sumbitPayment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements InvoicePaymentEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangePaymentMethodCopyWith<$Res> {
  factory _$$_ChangePaymentMethodCopyWith(_$_ChangePaymentMethod value,
          $Res Function(_$_ChangePaymentMethod) then) =
      __$$_ChangePaymentMethodCopyWithImpl<$Res>;
  $Res call({bool isPayOnline});
}

/// @nodoc
class __$$_ChangePaymentMethodCopyWithImpl<$Res>
    extends _$InvoicePaymentEventCopyWithImpl<$Res>
    implements _$$_ChangePaymentMethodCopyWith<$Res> {
  __$$_ChangePaymentMethodCopyWithImpl(_$_ChangePaymentMethod _value,
      $Res Function(_$_ChangePaymentMethod) _then)
      : super(_value, (v) => _then(v as _$_ChangePaymentMethod));

  @override
  _$_ChangePaymentMethod get _value => super._value as _$_ChangePaymentMethod;

  @override
  $Res call({
    Object? isPayOnline = freezed,
  }) {
    return _then(_$_ChangePaymentMethod(
      isPayOnline: isPayOnline == freezed
          ? _value.isPayOnline
          : isPayOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangePaymentMethod implements _ChangePaymentMethod {
  const _$_ChangePaymentMethod({required this.isPayOnline});

  @override
  final bool isPayOnline;

  @override
  String toString() {
    return 'InvoicePaymentEvent.changePaymentMethod(isPayOnline: $isPayOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePaymentMethod &&
            const DeepCollectionEquality()
                .equals(other.isPayOnline, isPayOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isPayOnline));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePaymentMethodCopyWith<_$_ChangePaymentMethod> get copyWith =>
      __$$_ChangePaymentMethodCopyWithImpl<_$_ChangePaymentMethod>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isPayOnline) changePaymentMethod,
    required TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)
        sumbitPayment,
  }) {
    return changePaymentMethod(isPayOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
  }) {
    return changePaymentMethod?.call(isPayOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(isPayOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_SubmitPayment value) sumbitPayment,
  }) {
    return changePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
  }) {
    return changePaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _ChangePaymentMethod implements InvoicePaymentEvent {
  const factory _ChangePaymentMethod({required final bool isPayOnline}) =
      _$_ChangePaymentMethod;

  bool get isPayOnline;
  @JsonKey(ignore: true)
  _$$_ChangePaymentMethodCopyWith<_$_ChangePaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitPaymentCopyWith<$Res> {
  factory _$$_SubmitPaymentCopyWith(
          _$_SubmitPayment value, $Res Function(_$_SubmitPayment) then) =
      __$$_SubmitPaymentCopyWithImpl<$Res>;
  $Res call(
      {bool isPayOnline,
      int totalAmount,
      List<PendingServiceModel> services,
      String cid,
      String pid,
      Function2<String, String, void> sendMessage,
      Function3<String, String, String, void> pay});
}

/// @nodoc
class __$$_SubmitPaymentCopyWithImpl<$Res>
    extends _$InvoicePaymentEventCopyWithImpl<$Res>
    implements _$$_SubmitPaymentCopyWith<$Res> {
  __$$_SubmitPaymentCopyWithImpl(
      _$_SubmitPayment _value, $Res Function(_$_SubmitPayment) _then)
      : super(_value, (v) => _then(v as _$_SubmitPayment));

  @override
  _$_SubmitPayment get _value => super._value as _$_SubmitPayment;

  @override
  $Res call({
    Object? isPayOnline = freezed,
    Object? totalAmount = freezed,
    Object? services = freezed,
    Object? cid = freezed,
    Object? pid = freezed,
    Object? sendMessage = freezed,
    Object? pay = freezed,
  }) {
    return _then(_$_SubmitPayment(
      isPayOnline: isPayOnline == freezed
          ? _value.isPayOnline
          : isPayOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<PendingServiceModel>,
      cid: cid == freezed
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      sendMessage: sendMessage == freezed
          ? _value.sendMessage
          : sendMessage // ignore: cast_nullable_to_non_nullable
              as Function2<String, String, void>,
      pay: pay == freezed
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as Function3<String, String, String, void>,
    ));
  }
}

/// @nodoc

class _$_SubmitPayment implements _SubmitPayment {
  const _$_SubmitPayment(
      {required this.isPayOnline,
      required this.totalAmount,
      required final List<PendingServiceModel> services,
      required this.cid,
      required this.pid,
      required this.sendMessage,
      required this.pay})
      : _services = services;

  @override
  final bool isPayOnline;
  @override
  final int totalAmount;
  final List<PendingServiceModel> _services;
  @override
  List<PendingServiceModel> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final String cid;
  @override
  final String pid;
  @override
  final Function2<String, String, void> sendMessage;
  @override
  final Function3<String, String, String, void> pay;

  @override
  String toString() {
    return 'InvoicePaymentEvent.sumbitPayment(isPayOnline: $isPayOnline, totalAmount: $totalAmount, services: $services, cid: $cid, pid: $pid, sendMessage: $sendMessage, pay: $pay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitPayment &&
            const DeepCollectionEquality()
                .equals(other.isPayOnline, isPayOnline) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other.cid, cid) &&
            const DeepCollectionEquality().equals(other.pid, pid) &&
            (identical(other.sendMessage, sendMessage) ||
                other.sendMessage == sendMessage) &&
            (identical(other.pay, pay) || other.pay == pay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPayOnline),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(cid),
      const DeepCollectionEquality().hash(pid),
      sendMessage,
      pay);

  @JsonKey(ignore: true)
  @override
  _$$_SubmitPaymentCopyWith<_$_SubmitPayment> get copyWith =>
      __$$_SubmitPaymentCopyWithImpl<_$_SubmitPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isPayOnline) changePaymentMethod,
    required TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)
        sumbitPayment,
  }) {
    return sumbitPayment(
        isPayOnline, totalAmount, services, cid, pid, sendMessage, pay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
  }) {
    return sumbitPayment?.call(
        isPayOnline, totalAmount, services, cid, pid, sendMessage, pay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isPayOnline)? changePaymentMethod,
    TResult Function(
            bool isPayOnline,
            int totalAmount,
            List<PendingServiceModel> services,
            String cid,
            String pid,
            Function2<String, String, void> sendMessage,
            Function3<String, String, String, void> pay)?
        sumbitPayment,
    required TResult orElse(),
  }) {
    if (sumbitPayment != null) {
      return sumbitPayment(
          isPayOnline, totalAmount, services, cid, pid, sendMessage, pay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_SubmitPayment value) sumbitPayment,
  }) {
    return sumbitPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
  }) {
    return sumbitPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_SubmitPayment value)? sumbitPayment,
    required TResult orElse(),
  }) {
    if (sumbitPayment != null) {
      return sumbitPayment(this);
    }
    return orElse();
  }
}

abstract class _SubmitPayment implements InvoicePaymentEvent {
  const factory _SubmitPayment(
          {required final bool isPayOnline,
          required final int totalAmount,
          required final List<PendingServiceModel> services,
          required final String cid,
          required final String pid,
          required final Function2<String, String, void> sendMessage,
          required final Function3<String, String, String, void> pay}) =
      _$_SubmitPayment;

  bool get isPayOnline;
  int get totalAmount;
  List<PendingServiceModel> get services;
  String get cid;
  String get pid;
  Function2<String, String, void> get sendMessage;
  Function3<String, String, String, void> get pay;
  @JsonKey(ignore: true)
  _$$_SubmitPaymentCopyWith<_$_SubmitPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvoicePaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(bool isPaymentOnline) changePaymentMethodSuccess,
    required TResult Function(String paymentStatus) paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangePaymentMethodSuccess value)
        changePaymentMethodSuccess,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicePaymentStateCopyWith<$Res> {
  factory $InvoicePaymentStateCopyWith(
          InvoicePaymentState value, $Res Function(InvoicePaymentState) then) =
      _$InvoicePaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvoicePaymentStateCopyWithImpl<$Res>
    implements $InvoicePaymentStateCopyWith<$Res> {
  _$InvoicePaymentStateCopyWithImpl(this._value, this._then);

  final InvoicePaymentState _value;
  // ignore: unused_field
  final $Res Function(InvoicePaymentState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$InvoicePaymentStateCopyWithImpl<$Res>
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
    return 'InvoicePaymentState.initial()';
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
    required TResult Function(bool isPaymentOnline) changePaymentMethodSuccess,
    required TResult Function(String paymentStatus) paymentSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
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
    required TResult Function(_ChangePaymentMethodSuccess value)
        changePaymentMethodSuccess,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InvoicePaymentState {
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
    extends _$InvoicePaymentStateCopyWithImpl<$Res>
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
    return 'InvoicePaymentState.loading()';
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
    required TResult Function(bool isPaymentOnline) changePaymentMethodSuccess,
    required TResult Function(String paymentStatus) paymentSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
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
    required TResult Function(_ChangePaymentMethodSuccess value)
        changePaymentMethodSuccess,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InvoicePaymentState {
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
    extends _$InvoicePaymentStateCopyWithImpl<$Res>
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
    return 'InvoicePaymentState.failure()';
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
    required TResult Function(bool isPaymentOnline) changePaymentMethodSuccess,
    required TResult Function(String paymentStatus) paymentSuccess,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
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
    required TResult Function(_ChangePaymentMethodSuccess value)
        changePaymentMethodSuccess,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements InvoicePaymentState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_ChangePaymentMethodSuccessCopyWith<$Res> {
  factory _$$_ChangePaymentMethodSuccessCopyWith(
          _$_ChangePaymentMethodSuccess value,
          $Res Function(_$_ChangePaymentMethodSuccess) then) =
      __$$_ChangePaymentMethodSuccessCopyWithImpl<$Res>;
  $Res call({bool isPaymentOnline});
}

/// @nodoc
class __$$_ChangePaymentMethodSuccessCopyWithImpl<$Res>
    extends _$InvoicePaymentStateCopyWithImpl<$Res>
    implements _$$_ChangePaymentMethodSuccessCopyWith<$Res> {
  __$$_ChangePaymentMethodSuccessCopyWithImpl(
      _$_ChangePaymentMethodSuccess _value,
      $Res Function(_$_ChangePaymentMethodSuccess) _then)
      : super(_value, (v) => _then(v as _$_ChangePaymentMethodSuccess));

  @override
  _$_ChangePaymentMethodSuccess get _value =>
      super._value as _$_ChangePaymentMethodSuccess;

  @override
  $Res call({
    Object? isPaymentOnline = freezed,
  }) {
    return _then(_$_ChangePaymentMethodSuccess(
      isPaymentOnline: isPaymentOnline == freezed
          ? _value.isPaymentOnline
          : isPaymentOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangePaymentMethodSuccess implements _ChangePaymentMethodSuccess {
  const _$_ChangePaymentMethodSuccess({required this.isPaymentOnline});

  @override
  final bool isPaymentOnline;

  @override
  String toString() {
    return 'InvoicePaymentState.changePaymentMethodSuccess(isPaymentOnline: $isPaymentOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePaymentMethodSuccess &&
            const DeepCollectionEquality()
                .equals(other.isPaymentOnline, isPaymentOnline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isPaymentOnline));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePaymentMethodSuccessCopyWith<_$_ChangePaymentMethodSuccess>
      get copyWith => __$$_ChangePaymentMethodSuccessCopyWithImpl<
          _$_ChangePaymentMethodSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(bool isPaymentOnline) changePaymentMethodSuccess,
    required TResult Function(String paymentStatus) paymentSuccess,
  }) {
    return changePaymentMethodSuccess(isPaymentOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
  }) {
    return changePaymentMethodSuccess?.call(isPaymentOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (changePaymentMethodSuccess != null) {
      return changePaymentMethodSuccess(isPaymentOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangePaymentMethodSuccess value)
        changePaymentMethodSuccess,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
  }) {
    return changePaymentMethodSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
  }) {
    return changePaymentMethodSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (changePaymentMethodSuccess != null) {
      return changePaymentMethodSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangePaymentMethodSuccess implements InvoicePaymentState {
  const factory _ChangePaymentMethodSuccess(
      {required final bool isPaymentOnline}) = _$_ChangePaymentMethodSuccess;

  bool get isPaymentOnline;
  @JsonKey(ignore: true)
  _$$_ChangePaymentMethodSuccessCopyWith<_$_ChangePaymentMethodSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentSuccessCopyWith<$Res> {
  factory _$$_PaymentSuccessCopyWith(
          _$_PaymentSuccess value, $Res Function(_$_PaymentSuccess) then) =
      __$$_PaymentSuccessCopyWithImpl<$Res>;
  $Res call({String paymentStatus});
}

/// @nodoc
class __$$_PaymentSuccessCopyWithImpl<$Res>
    extends _$InvoicePaymentStateCopyWithImpl<$Res>
    implements _$$_PaymentSuccessCopyWith<$Res> {
  __$$_PaymentSuccessCopyWithImpl(
      _$_PaymentSuccess _value, $Res Function(_$_PaymentSuccess) _then)
      : super(_value, (v) => _then(v as _$_PaymentSuccess));

  @override
  _$_PaymentSuccess get _value => super._value as _$_PaymentSuccess;

  @override
  $Res call({
    Object? paymentStatus = freezed,
  }) {
    return _then(_$_PaymentSuccess(
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentSuccess implements _PaymentSuccess {
  const _$_PaymentSuccess({required this.paymentStatus});

  @override
  final String paymentStatus;

  @override
  String toString() {
    return 'InvoicePaymentState.paymentSuccess(paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentSuccess &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(paymentStatus));

  @JsonKey(ignore: true)
  @override
  _$$_PaymentSuccessCopyWith<_$_PaymentSuccess> get copyWith =>
      __$$_PaymentSuccessCopyWithImpl<_$_PaymentSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function(bool isPaymentOnline) changePaymentMethodSuccess,
    required TResult Function(String paymentStatus) paymentSuccess,
  }) {
    return paymentSuccess(paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
  }) {
    return paymentSuccess?.call(paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function(bool isPaymentOnline)? changePaymentMethodSuccess,
    TResult Function(String paymentStatus)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(paymentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ChangePaymentMethodSuccess value)
        changePaymentMethodSuccess,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_ChangePaymentMethodSuccess value)?
        changePaymentMethodSuccess,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSuccess implements InvoicePaymentState {
  const factory _PaymentSuccess({required final String paymentStatus}) =
      _$_PaymentSuccess;

  String get paymentStatus;
  @JsonKey(ignore: true)
  _$$_PaymentSuccessCopyWith<_$_PaymentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
