// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'provider_raw_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProviderRawData _$ProviderRawDataFromJson(Map<String, dynamic> json) {
  return _ProviderRawData.fromJson(json);
}

/// @nodoc
mixin _$ProviderRawData {
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get addr => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_url')
  String get backgroundUrl => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'cur_location')
  @GeoPointConverter()
  GeoPoint get curLocation => throw _privateConstructorUsedError;
  Location get loc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  double get distance => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  double get timeArrivalInMinute => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<RepairService> get repairService => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uuid,
            @JsonKey(name: 'first_name')
                String firstName,
            @JsonKey(name: 'last_name')
                String lastName,
            String phone,
            String addr,
            @JsonKey(name: 'avatar_url')
                String avatarUrl,
            @JsonKey(name: 'background_url')
                String backgroundUrl,
            String bio,
            @JsonKey(name: 'cur_location')
            @GeoPointConverter()
                GeoPoint curLocation,
            Location loc,
            @JsonKey(ignore: true)
                double distance,
            @JsonKey(ignore: true)
                double timeArrivalInMinute,
            @JsonKey(ignore: true)
                double rating,
            @JsonKey(ignore: true)
                int ratingCount,
            @JsonKey(ignore: true)
                List<RepairService> repairService)
        def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String uuid,
            @JsonKey(name: 'first_name')
                String firstName,
            @JsonKey(name: 'last_name')
                String lastName,
            String phone,
            String addr,
            @JsonKey(name: 'avatar_url')
                String avatarUrl,
            @JsonKey(name: 'background_url')
                String backgroundUrl,
            String bio,
            @JsonKey(name: 'cur_location')
            @GeoPointConverter()
                GeoPoint curLocation,
            Location loc,
            @JsonKey(ignore: true)
                double distance,
            @JsonKey(ignore: true)
                double timeArrivalInMinute,
            @JsonKey(ignore: true)
                double rating,
            @JsonKey(ignore: true)
                int ratingCount,
            @JsonKey(ignore: true)
                List<RepairService> repairService)?
        def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uuid,
            @JsonKey(name: 'first_name')
                String firstName,
            @JsonKey(name: 'last_name')
                String lastName,
            String phone,
            String addr,
            @JsonKey(name: 'avatar_url')
                String avatarUrl,
            @JsonKey(name: 'background_url')
                String backgroundUrl,
            String bio,
            @JsonKey(name: 'cur_location')
            @GeoPointConverter()
                GeoPoint curLocation,
            Location loc,
            @JsonKey(ignore: true)
                double distance,
            @JsonKey(ignore: true)
                double timeArrivalInMinute,
            @JsonKey(ignore: true)
                double rating,
            @JsonKey(ignore: true)
                int ratingCount,
            @JsonKey(ignore: true)
                List<RepairService> repairService)?
        def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProviderRawData value) def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProviderRawData value)? def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProviderRawData value)? def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProviderRawDataCopyWith<ProviderRawData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderRawDataCopyWith<$Res> {
  factory $ProviderRawDataCopyWith(
          ProviderRawData value, $Res Function(ProviderRawData) then) =
      _$ProviderRawDataCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String phone,
      String addr,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'background_url') String backgroundUrl,
      String bio,
      @JsonKey(name: 'cur_location') @GeoPointConverter() GeoPoint curLocation,
      Location loc,
      @JsonKey(ignore: true) double distance,
      @JsonKey(ignore: true) double timeArrivalInMinute,
      @JsonKey(ignore: true) double rating,
      @JsonKey(ignore: true) int ratingCount,
      @JsonKey(ignore: true) List<RepairService> repairService});

  $LocationCopyWith<$Res> get loc;
}

/// @nodoc
class _$ProviderRawDataCopyWithImpl<$Res>
    implements $ProviderRawDataCopyWith<$Res> {
  _$ProviderRawDataCopyWithImpl(this._value, this._then);

  final ProviderRawData _value;
  // ignore: unused_field
  final $Res Function(ProviderRawData) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? addr = freezed,
    Object? avatarUrl = freezed,
    Object? backgroundUrl = freezed,
    Object? bio = freezed,
    Object? curLocation = freezed,
    Object? loc = freezed,
    Object? distance = freezed,
    Object? timeArrivalInMinute = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? repairService = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundUrl: backgroundUrl == freezed
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      curLocation: curLocation == freezed
          ? _value.curLocation
          : curLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      loc: loc == freezed
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as Location,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      timeArrivalInMinute: timeArrivalInMinute == freezed
          ? _value.timeArrivalInMinute
          : timeArrivalInMinute // ignore: cast_nullable_to_non_nullable
              as double,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      repairService: repairService == freezed
          ? _value.repairService
          : repairService // ignore: cast_nullable_to_non_nullable
              as List<RepairService>,
    ));
  }

  @override
  $LocationCopyWith<$Res> get loc {
    return $LocationCopyWith<$Res>(_value.loc, (value) {
      return _then(_value.copyWith(loc: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProviderRawDataCopyWith<$Res>
    implements $ProviderRawDataCopyWith<$Res> {
  factory _$$_ProviderRawDataCopyWith(
          _$_ProviderRawData value, $Res Function(_$_ProviderRawData) then) =
      __$$_ProviderRawDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String phone,
      String addr,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'background_url') String backgroundUrl,
      String bio,
      @JsonKey(name: 'cur_location') @GeoPointConverter() GeoPoint curLocation,
      Location loc,
      @JsonKey(ignore: true) double distance,
      @JsonKey(ignore: true) double timeArrivalInMinute,
      @JsonKey(ignore: true) double rating,
      @JsonKey(ignore: true) int ratingCount,
      @JsonKey(ignore: true) List<RepairService> repairService});

  @override
  $LocationCopyWith<$Res> get loc;
}

/// @nodoc
class __$$_ProviderRawDataCopyWithImpl<$Res>
    extends _$ProviderRawDataCopyWithImpl<$Res>
    implements _$$_ProviderRawDataCopyWith<$Res> {
  __$$_ProviderRawDataCopyWithImpl(
      _$_ProviderRawData _value, $Res Function(_$_ProviderRawData) _then)
      : super(_value, (v) => _then(v as _$_ProviderRawData));

  @override
  _$_ProviderRawData get _value => super._value as _$_ProviderRawData;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? addr = freezed,
    Object? avatarUrl = freezed,
    Object? backgroundUrl = freezed,
    Object? bio = freezed,
    Object? curLocation = freezed,
    Object? loc = freezed,
    Object? distance = freezed,
    Object? timeArrivalInMinute = freezed,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? repairService = freezed,
  }) {
    return _then(_$_ProviderRawData(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addr: addr == freezed
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundUrl: backgroundUrl == freezed
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      curLocation: curLocation == freezed
          ? _value.curLocation
          : curLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      loc: loc == freezed
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as Location,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      timeArrivalInMinute: timeArrivalInMinute == freezed
          ? _value.timeArrivalInMinute
          : timeArrivalInMinute // ignore: cast_nullable_to_non_nullable
              as double,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      repairService: repairService == freezed
          ? _value._repairService
          : repairService // ignore: cast_nullable_to_non_nullable
              as List<RepairService>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProviderRawData implements _ProviderRawData {
  const _$_ProviderRawData(
      {required this.uuid,
      @JsonKey(name: 'first_name')
          required this.firstName,
      @JsonKey(name: 'last_name')
          required this.lastName,
      required this.phone,
      required this.addr,
      @JsonKey(name: 'avatar_url')
          required this.avatarUrl,
      @JsonKey(name: 'background_url')
          required this.backgroundUrl,
      required this.bio,
      @JsonKey(name: 'cur_location')
      @GeoPointConverter()
          required this.curLocation,
      required this.loc,
      @JsonKey(ignore: true)
          this.distance = 0,
      @JsonKey(ignore: true)
          this.timeArrivalInMinute = 0,
      @JsonKey(ignore: true)
          this.rating = 0,
      @JsonKey(ignore: true)
          this.ratingCount = 0,
      @JsonKey(ignore: true)
          final List<RepairService> repairService = const <RepairService>[]})
      : _repairService = repairService;

  factory _$_ProviderRawData.fromJson(Map<String, dynamic> json) =>
      _$$_ProviderRawDataFromJson(json);

  @override
  final String uuid;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String phone;
  @override
  final String addr;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @override
  @JsonKey(name: 'background_url')
  final String backgroundUrl;
  @override
  final String bio;
  @override
  @JsonKey(name: 'cur_location')
  @GeoPointConverter()
  final GeoPoint curLocation;
  @override
  final Location loc;
  @override
  @JsonKey(ignore: true)
  final double distance;
  @override
  @JsonKey(ignore: true)
  final double timeArrivalInMinute;
  @override
  @JsonKey(ignore: true)
  final double rating;
  @override
  @JsonKey(ignore: true)
  final int ratingCount;
  final List<RepairService> _repairService;
  @override
  @JsonKey(ignore: true)
  List<RepairService> get repairService {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repairService);
  }

  @override
  String toString() {
    return 'ProviderRawData.def(uuid: $uuid, firstName: $firstName, lastName: $lastName, phone: $phone, addr: $addr, avatarUrl: $avatarUrl, backgroundUrl: $backgroundUrl, bio: $bio, curLocation: $curLocation, loc: $loc, distance: $distance, timeArrivalInMinute: $timeArrivalInMinute, rating: $rating, ratingCount: $ratingCount, repairService: $repairService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProviderRawData &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.addr, addr) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other.backgroundUrl, backgroundUrl) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality()
                .equals(other.curLocation, curLocation) &&
            const DeepCollectionEquality().equals(other.loc, loc) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality()
                .equals(other.timeArrivalInMinute, timeArrivalInMinute) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.ratingCount, ratingCount) &&
            const DeepCollectionEquality()
                .equals(other._repairService, _repairService));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(addr),
      const DeepCollectionEquality().hash(avatarUrl),
      const DeepCollectionEquality().hash(backgroundUrl),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(curLocation),
      const DeepCollectionEquality().hash(loc),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(timeArrivalInMinute),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(ratingCount),
      const DeepCollectionEquality().hash(_repairService));

  @JsonKey(ignore: true)
  @override
  _$$_ProviderRawDataCopyWith<_$_ProviderRawData> get copyWith =>
      __$$_ProviderRawDataCopyWithImpl<_$_ProviderRawData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uuid,
            @JsonKey(name: 'first_name')
                String firstName,
            @JsonKey(name: 'last_name')
                String lastName,
            String phone,
            String addr,
            @JsonKey(name: 'avatar_url')
                String avatarUrl,
            @JsonKey(name: 'background_url')
                String backgroundUrl,
            String bio,
            @JsonKey(name: 'cur_location')
            @GeoPointConverter()
                GeoPoint curLocation,
            Location loc,
            @JsonKey(ignore: true)
                double distance,
            @JsonKey(ignore: true)
                double timeArrivalInMinute,
            @JsonKey(ignore: true)
                double rating,
            @JsonKey(ignore: true)
                int ratingCount,
            @JsonKey(ignore: true)
                List<RepairService> repairService)
        def,
  }) {
    return def(
        uuid,
        firstName,
        lastName,
        phone,
        addr,
        avatarUrl,
        backgroundUrl,
        bio,
        curLocation,
        loc,
        distance,
        timeArrivalInMinute,
        rating,
        ratingCount,
        repairService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String uuid,
            @JsonKey(name: 'first_name')
                String firstName,
            @JsonKey(name: 'last_name')
                String lastName,
            String phone,
            String addr,
            @JsonKey(name: 'avatar_url')
                String avatarUrl,
            @JsonKey(name: 'background_url')
                String backgroundUrl,
            String bio,
            @JsonKey(name: 'cur_location')
            @GeoPointConverter()
                GeoPoint curLocation,
            Location loc,
            @JsonKey(ignore: true)
                double distance,
            @JsonKey(ignore: true)
                double timeArrivalInMinute,
            @JsonKey(ignore: true)
                double rating,
            @JsonKey(ignore: true)
                int ratingCount,
            @JsonKey(ignore: true)
                List<RepairService> repairService)?
        def,
  }) {
    return def?.call(
        uuid,
        firstName,
        lastName,
        phone,
        addr,
        avatarUrl,
        backgroundUrl,
        bio,
        curLocation,
        loc,
        distance,
        timeArrivalInMinute,
        rating,
        ratingCount,
        repairService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uuid,
            @JsonKey(name: 'first_name')
                String firstName,
            @JsonKey(name: 'last_name')
                String lastName,
            String phone,
            String addr,
            @JsonKey(name: 'avatar_url')
                String avatarUrl,
            @JsonKey(name: 'background_url')
                String backgroundUrl,
            String bio,
            @JsonKey(name: 'cur_location')
            @GeoPointConverter()
                GeoPoint curLocation,
            Location loc,
            @JsonKey(ignore: true)
                double distance,
            @JsonKey(ignore: true)
                double timeArrivalInMinute,
            @JsonKey(ignore: true)
                double rating,
            @JsonKey(ignore: true)
                int ratingCount,
            @JsonKey(ignore: true)
                List<RepairService> repairService)?
        def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(
          uuid,
          firstName,
          lastName,
          phone,
          addr,
          avatarUrl,
          backgroundUrl,
          bio,
          curLocation,
          loc,
          distance,
          timeArrivalInMinute,
          rating,
          ratingCount,
          repairService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProviderRawData value) def,
  }) {
    return def(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProviderRawData value)? def,
  }) {
    return def?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProviderRawData value)? def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProviderRawDataToJson(
      this,
    );
  }
}

abstract class _ProviderRawData implements ProviderRawData {
  const factory _ProviderRawData(
      {required final String uuid,
      @JsonKey(name: 'first_name')
          required final String firstName,
      @JsonKey(name: 'last_name')
          required final String lastName,
      required final String phone,
      required final String addr,
      @JsonKey(name: 'avatar_url')
          required final String avatarUrl,
      @JsonKey(name: 'background_url')
          required final String backgroundUrl,
      required final String bio,
      @JsonKey(name: 'cur_location')
      @GeoPointConverter()
          required final GeoPoint curLocation,
      required final Location loc,
      @JsonKey(ignore: true)
          final double distance,
      @JsonKey(ignore: true)
          final double timeArrivalInMinute,
      @JsonKey(ignore: true)
          final double rating,
      @JsonKey(ignore: true)
          final int ratingCount,
      @JsonKey(ignore: true)
          final List<RepairService> repairService}) = _$_ProviderRawData;

  factory _ProviderRawData.fromJson(Map<String, dynamic> json) =
      _$_ProviderRawData.fromJson;

  @override
  String get uuid;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get phone;
  @override
  String get addr;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(name: 'background_url')
  String get backgroundUrl;
  @override
  String get bio;
  @override
  @JsonKey(name: 'cur_location')
  @GeoPointConverter()
  GeoPoint get curLocation;
  @override
  Location get loc;
  @override
  @JsonKey(ignore: true)
  double get distance;
  @override
  @JsonKey(ignore: true)
  double get timeArrivalInMinute;
  @override
  @JsonKey(ignore: true)
  double get rating;
  @override
  @JsonKey(ignore: true)
  int get ratingCount;
  @override
  @JsonKey(ignore: true)
  List<RepairService> get repairService;
  @override
  @JsonKey(ignore: true)
  _$$_ProviderRawDataCopyWith<_$_ProviderRawData> get copyWith =>
      throw _privateConstructorUsedError;
}
