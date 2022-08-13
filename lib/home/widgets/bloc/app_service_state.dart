part of 'app_service_bloc.dart';

@freezed
class AppServiceState with _$AppServiceState {
  const factory AppServiceState.initial() = _Initial;
  const factory AppServiceState.failure() = _Failure;
  const factory AppServiceState.success({
    required LatLng currentLocation,
    required String vehicle,
  }) = _Success;
}
