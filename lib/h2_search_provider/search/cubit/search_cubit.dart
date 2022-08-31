import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../../map/map_api/map_api.dart';
import '../../../repairer_profile/models/record_rating_data.dart';
import '../../model/provider_raw_data.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._userStore, this.sr, this._repairRecord)
      : super(const SearchState.initial());
  final IStore<AppUser> _userStore;
  final StoreRepository sr;
  final IStore<RepairRecord> _repairRecord;

  StreamSubscription<List<DocumentSnapshot<Object?>>>? _s;

  Future<Unit> searchByKeywordWithinRadius(
    String keyword,
    double radius,
  ) async {
    emit(const SearchState.loading());
    final boxLocation = Hive.box<dynamic>('location');
    final repairLat = boxLocation.get('repairLat', defaultValue: 0.0) as double;
    final repairLng = boxLocation.get('repairLng', defaultValue: 0.0) as double;
    final repairPoint = GeoFirePoint(repairLat, repairLng);
    _s = GeoFlutterFire()
        .collection(
          collectionRef: _userStore
              .collection()
              .where('type', isEqualTo: '2')
              .where('active', isEqualTo: true)
              .where('online', isEqualTo: true),
        )
        .within(
          center: repairPoint,
          radius: radius,
          field: 'cur_location',
          strictMode: true,
        )
        .listen((e) => _onData(e, repairPoint, keyword, radius));
    return unit;
  }

  Future<void> _onData(
    List<DocumentSnapshot<Object?>> e,
    GeoFirePoint repairPoint,
    String keyword,
    double radius,
  ) async {
    if (e.isEmpty) {
      emit(SearchState.empty(keyword: keyword, resultCount: 0, radius: radius));
    } else {
      final providers = e
          .map((r) => r as DocumentSnapshot<Map<String, dynamic>>)
          .map(
            (e) => ProviderRawData.fromJson(e.data()!),
          )
          .fold<IList<ProviderRawData>>(nil(), (p, e) => cons(e, p));

      if (providers.isEmpty) {
        emit(SearchState.empty(
            keyword: keyword, resultCount: 0, radius: radius));
      } else {
        final providerRating = await Future.wait(
          (await providers
                  .traverseTask(
                    (k) => Task.value(
                      _repairRecord.where('pid', isEqualTo: k.uuid).then(
                            (value) => value
                                .map<IList<RecordRatingData>>(
                                  (r) => r
                                      .filter(
                                        (a) => a.maybeMap(
                                          orElse: () => false,
                                          finished: (_) => true,
                                        ),
                                      )
                                      .map(RecordRatingData.fromDtos),
                                )
                                .map(
                                  (r) => tuple2<double, int>(
                                    r
                                            .map((a) => a.feedback.rating)
                                            .foldLeft<int>(0, (p, a) => p + a) /
                                        (r.isEmpty ? 1 : r.length()),
                                    r.length(),
                                  ),
                                )
                                .map(
                                  (r) => k.copyWith(
                                    rating: r.value1,
                                    ratingCount: r.value2,
                                  ),
                                )
                                .fold((l) => throw NullThrownError(), (r) => r),
                          ),
                    ),
                  )
                  .run())
              .toIterable(),
        );

        final providerSumm = await Future.wait(
          (await IList.from(providerRating)
                  .traverseTask(
                    (a) => Task.value(
                      getDirections(
                        LatLng(repairPoint.latitude, repairPoint.longitude),
                        LatLng(a.curLocation.latitude, a.curLocation.longitude),
                      ).then(
                        (v) => a.copyWith(
                          distance: v.distance.toDouble() / 1000,
                          timeArrivalInMinute: v.duration.toDouble() / 60,
                        ),
                      ),
                    ),
                  )
                  .run())
              .toIterable(),
        );
        final boxRR = Hive.box<dynamic>(
          'repairRecord',
        );
        final vehicle =
            (boxRR.get('vehicle') as String) == 'car' ? 'Oto' : 'Xe máy';

        final providerContainSer = await Future.wait(
          (await IList.from(providerSumm)
                  .traverseTask(
                    (a) => Task.value(
                      (sr
                              .repairServiceRepo(
                                AppUserDummy.dummyProvider(a.uuid),
                                RepairCategoryDummy.dummy(vehicle),
                              )
                              .all())
                          .then(
                        (v) => v.fold(
                          (l) => a,
                          (r) => a.copyWith(repairService: r.toList()),
                        ),
                      ),
                    ),
                  )
                  .run())
              .toIterable(),
        );
        var providerFilter = providerContainSer;
        if (keyword.isNotEmpty) {
          providerFilter = providerContainSer
              .where(
                (e) => e.repairService.isNotEmpty,
              )
              .where(
                (e) => e.repairService.any(
                  (a) => a.name.toLowerCase().contains(keyword.toLowerCase()),
                ),
              )
              .toList();
        }
        log(providerContainSer.toString());
        log(providerFilter.toString());
        if (providerFilter.isEmpty) {
          emit(
            SearchState.empty(
              keyword: keyword,
              resultCount: 0,
              radius: radius,
            ),
          );
        } else {
          emit(
            SearchState.result(
              keyword: keyword,
              resultCount: providerFilter.length,
              providers: providerFilter,
              radius: radius,
            ),
          );
        }
      }
    }
  }

  @override
  Future<void> close() async {
    await _s?.cancel();
    return super.close();
  }
}
