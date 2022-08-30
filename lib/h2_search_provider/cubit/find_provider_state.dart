part of 'find_provider_cubit.dart';

@freezed
class FindProviderState with _$FindProviderState {
  const factory FindProviderState.initial() = _Initial;
  const factory FindProviderState.empty() = _Empty;
  const factory FindProviderState.failure() = _Failure;
  const factory FindProviderState.loaded({
    required List<ProviderRawData> providers,
  }) = _Loaded;
}
