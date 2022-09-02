part of 'h16_map_route_bloc.dart';

@freezed
class H16MapRouteState with _$H16MapRouteState {
  const factory H16MapRouteState.initial() = _Initial;
  const factory H16MapRouteState.success({
    required Directions directions,
    required Marker fromMarker,
    required Marker toMarker,
    required ProviderData providerData,
    required int movingFees,
  }) = _Success;
  // TODO (tcmhoang): Handle failure in view
  const factory H16MapRouteState.failure() = _Failure;
}
