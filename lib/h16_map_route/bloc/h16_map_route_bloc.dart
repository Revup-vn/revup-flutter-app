import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../map/map_api/map_api.dart';
import '../../map/models/directions_model.dart';
import '../../repairer_profile/models/record_rating_data.dart';
import '../../shared/utils.dart';

part 'h16_map_route_bloc.freezed.dart';
part 'h16_map_route_event.dart';
part 'h16_map_route_state.dart';

class H16MapRouteBloc extends Bloc<H16MapRouteEvent, H16MapRouteState> {
  H16MapRouteBloc(
    this.providerId,
    this._userStore,
    this.storeRepository,
    this._repairRecord,
  ) : super(const _Initial()) {
    on<H16MapRouteEvent>(_onEvent);
  }
  final String providerId;
  final IStore<AppUser> _userStore;
  final StoreRepository storeRepository;
  final IStore<RepairRecord> _repairRecord;
  FutureOr<void> _onEvent(
    H16MapRouteEvent event,
    Emitter<H16MapRouteState> emit,
  ) async {
    await event.when(
      started: () async {
        //fetch data provider,
        final providerData = (await _userStore.get(providerId))
            .map(
              (aUser) => aUser.map<Option<AppUser>>(
                provider: some,
                admin: (value) => none(),
                consumer: (value) => none(),
              ),
            )
            .fold<Option<AppUser>>((l) => none(), (r) => r)
            .getOrElse(() => throw NullThrownError());
        //fetch data rating
        final ratingData = (await _repairRecord.where(
          'pid',
          isEqualTo: providerId,
        ))
            .map<IList<Option<RecordRatingData>>>(
              (r) => r.map(
                (a) => a.maybeMap(
                  orElse: none,
                  finished: (v) => some(
                    RecordRatingData.fromDtos(v),
                  ),
                ),
              ),
            )
            .map<IList<RecordRatingData>>(
              (r) => r.filter((a) => a.isSome()).map(
                    (a) => a.getOrElse(
                      () => throw NullThrownError(),
                    ),
                  ),
            )
            .map(
              (r) => tuple2(
                r
                        .map((a) => a.feedback?.rating ?? 0)
                        .where((a) => a != 0)
                        .foldLeft<int>(0, (previous, a) => previous + a) /
                    (r.isEmpty ? 1 : r.length()),
                r.length(),
              ),
            )
            .fold<Option<Map<String, dynamic>>>(
              (l) => none(),
              (r) => some(r.toMap()),
            )
            .getOrElse(() => throw NullThrownError());

        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final toLat = boxRprRecord.get('toLat', defaultValue: 0.0) as double;
        final toLng = boxRprRecord.get('toLng', defaultValue: 0.0) as double;
        final toLoc = LatLng(toLat, toLng);

        final doc = await _userStore.collection().doc(providerId).get();
        final maybeProviderData = doc.data() ?? <String, dynamic>{};
        if (maybeProviderData.isEmpty) {
          emit(const H16MapRouteState.failure());
        } else {
          final fromPoint = (maybeProviderData['cur_location']
              as Map<String, dynamic>)['geopoint'] as GeoPoint;
          final fromLoc = LatLng(fromPoint.latitude, fromPoint.longitude);
          final directions = await getDirections(fromLoc, toLoc);
          final movingFee =
              calculateMovingFees(directions.distance, 15000, 5000);
          final toMarker =
              Marker(markerId: const MarkerId('_to'), position: toLoc);
          final fromMarker = Marker(
            markerId: const MarkerId('_from'),
            position: fromLoc,
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueYellow),
          );
          emit(
            H16MapRouteState.success(
              directions: directions,
              fromMarker: fromMarker,
              toMarker: toMarker,
              providerData: ProviderData.fromDtos(
                providerData,
                distance: 0,
                duration: 0,
                rating: double.parse(ratingData['value1'].toString()),
                ratingCount: int.parse(ratingData['value2'].toString()),
              ),
              movingFees: movingFee,
            ),
          );
        }
      },
      confirmArrival: (onRoute, sendMessage) async {
        try {
          // get latest consumer fcm token
          final provider = (await _userStore.get(providerId))
              .fold<Option<AppUser>>(
                (l) => none(),
                some,
              )
              .getOrElse(() => throw NullThrownError());
          final tokens = (await storeRepository
                  .userNotificationTokenRepo(provider)
                  .all())
              .map(
                (r) => r.sort(
                  orderBy(StringOrder.reverse(), (a) => a.created.toString()),
                ),
              )
              .fold((l) => throw NullThrownError(), (r) => r.toList());

          sendMessage(tokens.first.token, providerId);

          onRoute();
        } catch (_) {
          emit(const H16MapRouteState.failure());
        }
      },
    );
  }
}
