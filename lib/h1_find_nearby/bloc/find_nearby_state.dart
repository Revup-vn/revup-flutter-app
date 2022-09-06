part of 'find_nearby_bloc.dart';

@freezed
class FindNearbyState with _$FindNearbyState {
  const factory FindNearbyState.initial() = _Initial;
  const factory FindNearbyState.loading() = _Loading;
  const factory FindNearbyState.failure() = _Failure;
  const factory FindNearbyState.loaded({required String addr}) = _Loaded;
}
