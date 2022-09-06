part of 'find_nearby_bloc.dart';

@freezed
class FindNearbyEvent with _$FindNearbyEvent {
  const factory FindNearbyEvent.started(double lat, double lng) = _Started;
  const factory FindNearbyEvent.submitted({
    required double lat,
    required double lng,
    required Function0<void> onRoute,
  }) = _Submitted;
}
