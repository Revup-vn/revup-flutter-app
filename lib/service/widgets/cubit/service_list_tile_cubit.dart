import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_list_tile_state.dart';
part 'service_list_tile_cubit.freezed.dart';

class ServiceListTileCubit extends Cubit<ServiceListTileState> {
  ServiceListTileCubit() : super(const _Initial());

  Future<void> addService(String serviceId) async {
    log(serviceId);
    emit(ServiceListTileState.checked(serviceId));
  }

  Future<void> removeService(String serviceId) async {
    log(serviceId);
    emit(ServiceListTileState.unchecked(serviceId));
  }
}
