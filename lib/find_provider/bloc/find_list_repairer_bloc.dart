import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../map/map_api/map_api.dart';
import '../../repairer_profile/models/record_rating_data.dart';
import '../models/provider_data.u.dart';

part 'find_list_repairer_bloc.freezed.dart';
part 'find_list_repairer_event.dart';
part 'find_list_repairer_state.dart';

class FindListRepairerBloc
    extends Bloc<FindListRepairerEvent, FindListRepairerState> {
  FindListRepairerBloc(
    this._userStore,
    this._repairRecord,
    this.errorMessage,
  ) : super(const _Initial(hasValue: false)) {
    on<FindListRepairerEvent>(_onEvent);
  }
  final _geo = GeoFlutterFire();
  final List<String> errorMessage;

  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  FutureOr<void> _onEvent(
    FindListRepairerEvent event,
    Emitter<FindListRepairerState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const FindListRepairerState.loading());

        final boxLocation = Hive.box<dynamic>('location');
        final repairLat =
            boxLocation.get('repairLat', defaultValue: 0.0) as double;
        final repairLng =
            boxLocation.get('repairLng', defaultValue: 0.0) as double;
        final repairPoint = GeoFirePoint(repairLat, repairLng);
        final stream = getNearbyProviders(repairLat, repairLng);
        final providers = <ProviderData>[];

        await for (final List<DocumentSnapshot> dataList in stream) {
          for (final doc in dataList) {
            final providerData =
                doc.data() as Map<String, dynamic>? ?? <String, dynamic>{};
            final providerLoc = (providerData['cur_location']
                as Map<String, dynamic>)['geopoint'] as GeoPoint;
            final directions = await getDirections(
              LatLng(repairPoint.latitude, repairPoint.longitude),
              LatLng(providerLoc.latitude, providerLoc.longitude),
            );

            final ratingData = (await _repairRecord.where(
              'pid',
              isEqualTo: providerData['uuid'] as String,
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
                            .map((a) => a.feedback.rating)
                            .foldLeft<int>(0, (previous, a) => previous + a) /
                        r.length(),
                    r.length(),
                  ),
                )
                .fold<Option<Map<String, dynamic>>>(
                  (l) => none(),
                  (r) => some(r.toMap()),
                )
                .getOrElse(() => throw NullThrownError());
            final provider = ProviderData.fromDtos(
              AppUser.fromJson(providerData),
              distance: directions.distance.toDouble(),
              duration: directions.duration.toDouble(),
              rating: ratingData['value1'] as double,
              ratingCount: ratingData['value2'] as int,
            );
            providers.add(provider);
          }
          emit(
            providers.isNotEmpty
                ? FindListRepairerState.dataLoadSuccess(
                    listProvider: ilist<ProviderData>(providers),
                  )
                : FindListRepairerState.failure(
                    errorMessage: errorMessage.elementAt(1),
                  ),
          );
        }
      },
      dropdownListChanged: (sortType) {
        emit(
          FindListRepairerState.dropdownListChangedSuccess(
            listProvider: ilist([]),
            sortType: sortType,
          ),
        );
      },
    );
  }

  Stream<List<DocumentSnapshot>> getNearbyProviders(double lat, double lng) {
    final center = GeoFirePoint(lat, lng);
    final typeRef = _userStore.collection().where('type', isEqualTo: '2');
    final onlineRef = typeRef.where('online', isEqualTo: true);

    return _geo.collection(collectionRef: onlineRef).within(
          center: center,
          radius: 50,
          field: 'cur_location',
          strictMode: true,
        );
  }
}
