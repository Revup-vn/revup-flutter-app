// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryModel {
  bool get isComplete => throw _privateConstructorUsedError;
  String get vehicleType => throw _privateConstructorUsedError;
  String get toLocation => throw _privateConstructorUsedError;
  DateTime get completedTime => throw _privateConstructorUsedError;
  AppUser get provider => throw _privateConstructorUsedError;
  ReportFeedback? get feedback => throw _privateConstructorUsedError;
  IList<PaymentService> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res>;
  $Res call(
      {bool isComplete,
      String vehicleType,
      String toLocation,
      DateTime completedTime,
      AppUser provider,
      ReportFeedback? feedback,
      IList<PaymentService> services});

  $AppUserCopyWith<$Res> get provider;
  $ReportFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res> implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

  final HistoryModel _value;
  // ignore: unused_field
  final $Res Function(HistoryModel) _then;

  @override
  $Res call({
    Object? isComplete = freezed,
    Object? vehicleType = freezed,
    Object? toLocation = freezed,
    Object? completedTime = freezed,
    Object? provider = freezed,
    Object? feedback = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      toLocation: toLocation == freezed
          ? _value.toLocation
          : toLocation // ignore: cast_nullable_to_non_nullable
              as String,
      completedTime: completedTime == freezed
          ? _value.completedTime
          : completedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AppUser,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as ReportFeedback?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as IList<PaymentService>,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get provider {
    return $AppUserCopyWith<$Res>(_value.provider, (value) {
      return _then(_value.copyWith(provider: value));
    });
  }

  @override
  $ReportFeedbackCopyWith<$Res>? get feedback {
    if (_value.feedback == null) {
      return null;
    }

    return $ReportFeedbackCopyWith<$Res>(_value.feedback!, (value) {
      return _then(_value.copyWith(feedback: value));
    });
  }
}

/// @nodoc
abstract class _$$_HistoryConsumerModelCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$$_HistoryConsumerModelCopyWith(_$_HistoryConsumerModel value,
          $Res Function(_$_HistoryConsumerModel) then) =
      __$$_HistoryConsumerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isComplete,
      String vehicleType,
      String toLocation,
      DateTime completedTime,
      AppUser provider,
      ReportFeedback? feedback,
      IList<PaymentService> services});

  @override
  $AppUserCopyWith<$Res> get provider;
  @override
  $ReportFeedbackCopyWith<$Res>? get feedback;
}

/// @nodoc
class __$$_HistoryConsumerModelCopyWithImpl<$Res>
    extends _$HistoryModelCopyWithImpl<$Res>
    implements _$$_HistoryConsumerModelCopyWith<$Res> {
  __$$_HistoryConsumerModelCopyWithImpl(_$_HistoryConsumerModel _value,
      $Res Function(_$_HistoryConsumerModel) _then)
      : super(_value, (v) => _then(v as _$_HistoryConsumerModel));

  @override
  _$_HistoryConsumerModel get _value => super._value as _$_HistoryConsumerModel;

  @override
  $Res call({
    Object? isComplete = freezed,
    Object? vehicleType = freezed,
    Object? toLocation = freezed,
    Object? completedTime = freezed,
    Object? provider = freezed,
    Object? feedback = freezed,
    Object? services = freezed,
  }) {
    return _then(_$_HistoryConsumerModel(
      isComplete: isComplete == freezed
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      toLocation: toLocation == freezed
          ? _value.toLocation
          : toLocation // ignore: cast_nullable_to_non_nullable
              as String,
      completedTime: completedTime == freezed
          ? _value.completedTime
          : completedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AppUser,
      feedback: feedback == freezed
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as ReportFeedback?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as IList<PaymentService>,
    ));
  }
}

/// @nodoc

class _$_HistoryConsumerModel implements _HistoryConsumerModel {
  const _$_HistoryConsumerModel(
      {required this.isComplete,
      required this.vehicleType,
      required this.toLocation,
      required this.completedTime,
      required this.provider,
      this.feedback,
      required this.services});

  @override
  final bool isComplete;
  @override
  final String vehicleType;
  @override
  final String toLocation;
  @override
  final DateTime completedTime;
  @override
  final AppUser provider;
  @override
  final ReportFeedback? feedback;
  @override
  final IList<PaymentService> services;

  @override
  String toString() {
    return 'HistoryModel(isComplete: $isComplete, vehicleType: $vehicleType, toLocation: $toLocation, completedTime: $completedTime, provider: $provider, feedback: $feedback, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryConsumerModel &&
            const DeepCollectionEquality()
                .equals(other.isComplete, isComplete) &&
            const DeepCollectionEquality()
                .equals(other.vehicleType, vehicleType) &&
            const DeepCollectionEquality()
                .equals(other.toLocation, toLocation) &&
            const DeepCollectionEquality()
                .equals(other.completedTime, completedTime) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality().equals(other.feedback, feedback) &&
            const DeepCollectionEquality().equals(other.services, services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isComplete),
      const DeepCollectionEquality().hash(vehicleType),
      const DeepCollectionEquality().hash(toLocation),
      const DeepCollectionEquality().hash(completedTime),
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(feedback),
      const DeepCollectionEquality().hash(services));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryConsumerModelCopyWith<_$_HistoryConsumerModel> get copyWith =>
      __$$_HistoryConsumerModelCopyWithImpl<_$_HistoryConsumerModel>(
          this, _$identity);
}

abstract class _HistoryConsumerModel implements HistoryModel {
  const factory _HistoryConsumerModel(
      {required final bool isComplete,
      required final String vehicleType,
      required final String toLocation,
      required final DateTime completedTime,
      required final AppUser provider,
      final ReportFeedback? feedback,
      required final IList<PaymentService> services}) = _$_HistoryConsumerModel;

  @override
  bool get isComplete;
  @override
  String get vehicleType;
  @override
  String get toLocation;
  @override
  DateTime get completedTime;
  @override
  AppUser get provider;
  @override
  ReportFeedback? get feedback;
  @override
  IList<PaymentService> get services;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryConsumerModelCopyWith<_$_HistoryConsumerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
