part of 'h16_map_route_bloc.dart';

@freezed
class H16MapRouteEvent with _$H16MapRouteEvent {
  const factory H16MapRouteEvent.started() = _Started;
  const factory H16MapRouteEvent.confirmArrival({
    required Function0<void> onRoute,
    required Function2<String, String, void> sendMessage,
  }) = _ConfirmArrival;
}
