part of 'request_provider_bloc.dart';

@freezed
class RequestProviderState with _$RequestProviderState {
  const factory RequestProviderState.initial() = _Initial;
  const factory RequestProviderState.loading() = _Loading;
  const factory RequestProviderState.failure() = _Failure;
  const factory RequestProviderState.success({
    required Directions directions,
    required Marker fromMarker,
    required Marker toMarker,
    required int movingFee,
    required ProviderData providerData,
  }) = _Success;
}
