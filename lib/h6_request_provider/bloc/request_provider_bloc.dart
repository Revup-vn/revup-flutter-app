import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../map/map_api/map_api.dart';
import '../../map/models/directions_model.dart';
import '../../shared/utils.dart';

// ignore: unnecessary_import

part 'request_provider_bloc.freezed.dart';
part 'request_provider_event.dart';
part 'request_provider_state.dart';

class RequestProviderBloc
    extends Bloc<RequestProviderEvent, RequestProviderState> {
  RequestProviderBloc(
    this.providerData,
    this._userStore,
    this.recordType,
  ) : super(const _Initial()) {
    on<RequestProviderEvent>(_onEvent);
  }
  final ProviderData providerData;
  final IStore<AppUser> _userStore;
  final String recordType;
  FutureOr<void> _onEvent(
    RequestProviderEvent event,
    Emitter<RequestProviderState> emit,
  ) async {
    await event.when(
      started: () async {
        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final toLat = boxRprRecord.get('toLat', defaultValue: 0.0) as double;
        final toLng = boxRprRecord.get('toLng', defaultValue: 0.0) as double;
        final toLoc = LatLng(toLat, toLng);

        final doc = await _userStore.collection().doc(providerData.id).get();
        final maybeProviderData = doc.data()!;

        final fromPoint = (maybeProviderData['cur_location']
            as Map<String, dynamic>)['geopoint'] as GeoPoint;
        final fromLoc = LatLng(fromPoint.latitude, fromPoint.longitude);
        final directions = await getDirections(fromLoc, toLoc);
        final movingFee = calculateMovingFees(directions.distance, 15000, 5000);
        final toMarker =
            Marker(markerId: const MarkerId('_to'), position: toLoc);
        final fromMarker = Marker(
          markerId: const MarkerId('_from'),
          position: fromLoc,
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
        );
        emit(
          RequestProviderState.success(
            directions: directions,
            fromMarker: fromMarker,
            toMarker: toMarker,
            movingFee: movingFee,
          ),
        );
      },
    );
  }
}
