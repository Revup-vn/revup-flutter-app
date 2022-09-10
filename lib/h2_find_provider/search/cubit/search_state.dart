part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.empty({
    required String keyword,
    required int resultCount,
    required double radius,
  }) = _Empty;
  const factory SearchState.result({
    required String keyword,
    required int resultCount,
    required double radius,
    required List<Tuple2<ProviderRawData, Tuple3<RepairService, int, int>>>
        providers,
  }) = _Success;
}
