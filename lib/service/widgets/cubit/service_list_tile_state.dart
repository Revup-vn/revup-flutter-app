part of 'service_list_tile_cubit.dart';

@freezed
class ServiceListTileState with _$ServiceListTileState {
  const factory ServiceListTileState.initial() = _Initial;
  const factory ServiceListTileState.checked(String serviceId) = _Checked;
  const factory ServiceListTileState.unchecked(String serviceId) = _Unchecked;
}
