part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.addressLoaded({required String address}) =
      _AddressLoaded;
  const factory LocationState.placeDetailsLoaded({
    required PlaceDetails placeDetails,
  }) = _PlaceDetailsLoaded;
}
