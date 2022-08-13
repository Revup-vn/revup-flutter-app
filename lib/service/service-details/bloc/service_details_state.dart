part of 'service_details_bloc.u.dart';

@freezed
class ServiceDetailsState with _$ServiceDetailsState {
  const factory ServiceDetailsState.initial() = _Initial;
  const factory ServiceDetailsState.loaded({
    required IList<RepairProduct> products,
  }) = _Loaded;
}
