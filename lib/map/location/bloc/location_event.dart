part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.positionUpdated({required LatLng position}) =
      _PositionUpdated;
  const factory LocationEvent.placeSearch({required String placeId}) =
      _PlaceSearch;
}
