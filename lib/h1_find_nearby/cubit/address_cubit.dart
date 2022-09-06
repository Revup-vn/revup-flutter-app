import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../map/map_api/map_api.dart';

part 'address_cubit.freezed.dart';
part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit() : super(const AddressState.initial());

  Future<Unit> loadAddress(double lat, double lng) async {
    emit(const AddressState.loading());
    await getAddress(LatLng(lat, lng))
        .then((value) => emit(AddressState.success(addr: value)))
        .catchError((Object? e) => emit(const AddressState.failure()));
    return unit;
  }
}
