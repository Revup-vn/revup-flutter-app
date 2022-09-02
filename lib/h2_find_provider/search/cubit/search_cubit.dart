import 'dart:async';

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
import '../../models/provider_raw_data.dart';

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
    String price,
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
        .listen((e) => _onData(e, repairPoint, keyword, radius, price));
    return unit;
  }

  Future<void> _onData(
    List<DocumentSnapshot<Object?>> e,
    GeoFirePoint repairPoint,
    String keyword,
    double radius,
    String priceSort,
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
        emit(
          SearchState.empty(
            keyword: keyword,
            resultCount: 0,
            radius: radius,
          ),
        );
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

        final provWithService = await Future.wait(
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
        var filterService = provWithService;
        if (keyword.isNotEmpty) {
          filterService = provWithService
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

        var filterPrice =
            <Tuple2<ProviderRawData, List<Tuple3<RepairService, int, int>>>>[];

        filterPrice = await Future.wait(
          filterService.map((e) => tuple2(e, e.repairService)).toList().map(
                (e) async => tuple2(
                  e.value1,
                  ((await Future.wait(
                    (await IList.from(e.value2)
                            .traverseTask(
                              (a) => Task.value(
                                (sr
                                        .repairProductRepo(
                                          AppUserDummy.dummyProvider(
                                            e.value1.uuid,
                                          ),
                                          RepairCategoryDummy.dummy(vehicle),
                                          a,
                                        )
                                        .all())
                                    .then(
                                  (value) => value
                                      .map(
                                        (r) => r.sort(
                                          orderBy(
                                            IntOrder.reverse(),
                                            (k) => k.price,
                                          ),
                                        ),
                                      )
                                      .map(
                                        (r) => tuple3<RepairService, int, int>(
                                          a,
                                          (r.toList().isEmpty
                                                  ? 0
                                                  : (r.toList().last.price)) +
                                              a.fee,
                                          (r.toList().isEmpty
                                                  ? 0
                                                  : (r.toList().first.price)) +
                                              a.fee,
                                        ),
                                      )
                                      .fold(
                                        (l) => tuple3(a, 0, 0),
                                        (r) => r,
                                      ),
                                ),
                              ),
                            )
                            .run())
                        .toIterable(),
                  ))
                    ..sort((a, b) => a.value2.compareTo(b.value2))),
                ),
              ),
        );

        final priceLowestRange = filterPrice
            .map(
              (e) => tuple2(
                e.value1,
                tuple2(
                  e.value2.isEmpty
                      ? 0
                      : (e.value2.firstWhere(
                          (element) =>
                              element.value1.name.toLowerCase() ==
                              keyword.toLowerCase(),
                          orElse: () {
                            if (e.value2.first.value1.name
                                .toLowerCase()
                                .contains(keyword.toLowerCase())) {
                              return e.value2.first;
                            }
                            return e.value2.firstWhere((element) => element
                                .value1.name
                                .toLowerCase()
                                .contains(keyword.toLowerCase()));
                          },
                        ).value2),
                  e.value2.isEmpty
                      ? 0
                      : (e.value2.firstWhere(
                          (element) =>
                              element.value1.name.toLowerCase() ==
                              keyword.toLowerCase(),
                          orElse: () {
                            if (e.value2.first.value1.name
                                .toLowerCase()
                                .contains(keyword.toLowerCase())) {
                              return e.value2.first;
                            }
                            return e.value2.firstWhere(
                              (element) => element.value1.name
                                  .toLowerCase()
                                  .contains(keyword.toLowerCase()),
                            );
                          },
                        ).value3),
                ),
              ),
            )
            .toList();

        if (priceSort.isNotEmpty && priceSort == 'desc') {
          priceLowestRange.sort((b, a) {
            var cmp = a.value2.value1.compareTo(b.value2.value1);
            if (cmp != 0) return cmp;
            cmp = b.value1.distance.compareTo(a.value1.distance);
            if (cmp != 0) return cmp;
            return a.value1.rating.compareTo(b.value1.rating);
          });
        } else {
          priceLowestRange.sort(
            (a, b) {
              var cmp = a.value2.value1.compareTo(b.value2.value1);
              if (cmp != 0) return cmp;
              cmp = a.value1.distance.compareTo(b.value1.distance);
              if (cmp != 0) return cmp;
              return b.value1.rating.compareTo(a.value1.rating);
            },
          );
        }

        if (filterPrice.isEmpty) {
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
              resultCount: priceLowestRange.length,
              providers: priceLowestRange,
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
