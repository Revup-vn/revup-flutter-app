// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationPageModel {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationPageModelCopyWith<NotificationPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPageModelCopyWith<$Res> {
  factory $NotificationPageModelCopyWith(NotificationPageModel value,
          $Res Function(NotificationPageModel) then) =
      _$NotificationPageModelCopyWithImpl<$Res>;
  $Res call({String title, String body, DateTime time});
}

/// @nodoc
class _$NotificationPageModelCopyWithImpl<$Res>
    implements $NotificationPageModelCopyWith<$Res> {
  _$NotificationPageModelCopyWithImpl(this._value, this._then);

  final NotificationPageModel _value;
  // ignore: unused_field
  final $Res Function(NotificationPageModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationPageModelCopyWith<$Res>
    implements $NotificationPageModelCopyWith<$Res> {
  factory _$$_NotificationPageModelCopyWith(_$_NotificationPageModel value,
          $Res Function(_$_NotificationPageModel) then) =
      __$$_NotificationPageModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String body, DateTime time});
}

/// @nodoc
class __$$_NotificationPageModelCopyWithImpl<$Res>
    extends _$NotificationPageModelCopyWithImpl<$Res>
    implements _$$_NotificationPageModelCopyWith<$Res> {
  __$$_NotificationPageModelCopyWithImpl(_$_NotificationPageModel _value,
      $Res Function(_$_NotificationPageModel) _then)
      : super(_value, (v) => _then(v as _$_NotificationPageModel));

  @override
  _$_NotificationPageModel get _value =>
      super._value as _$_NotificationPageModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_NotificationPageModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_NotificationPageModel implements _NotificationPageModel {
  const _$_NotificationPageModel(
      {required this.title, required this.body, required this.time});

  @override
  final String title;
  @override
  final String body;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'NotificationPageModel(title: $title, body: $body, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationPageModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationPageModelCopyWith<_$_NotificationPageModel> get copyWith =>
      __$$_NotificationPageModelCopyWithImpl<_$_NotificationPageModel>(
          this, _$identity);
}

abstract class _NotificationPageModel implements NotificationPageModel {
  const factory _NotificationPageModel(
      {required final String title,
      required final String body,
      required final DateTime time}) = _$_NotificationPageModel;

  @override
  String get title;
  @override
  String get body;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationPageModelCopyWith<_$_NotificationPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
