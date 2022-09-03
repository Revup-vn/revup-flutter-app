import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../models/rating_data.u.dart';
import '../models/service_data.u.dart';

part 'repairer_profile_bloc.freezed.dart';
part 'repairer_profile_event.dart';
part 'repairer_profile_state.dart';

class RepairerProfileBloc
    extends Bloc<RepairerProfileEvent, RepairerProfileState> {
  RepairerProfileBloc(
    this._userStore,
    this._repairRecord,
    this.storeRepository,
    this.providerData,
  ) : super(const _Initial()) {
    on<RepairerProfileEvent>(_onEvent);
  }
  final ProviderData providerData;
  final IStore<AppUser> _userStore;
  final StoreRepository storeRepository;
  final IStore<RepairRecord> _repairRecord;

  FutureOr<void> _onEvent(
    RepairerProfileEvent event,
    Emitter<RepairerProfileState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const RepairerProfileState.loading());

        final maybeProviderData = (await _userStore.get(providerData.id))
            .fold<Option<AppUser>>(
              (l) => none(),
              some,
            )
            .getOrElse(() => throw NullThrownError());

        final maybeLstRecord = (await _repairRecord.where(
          'pid',
          isEqualTo: providerData.id,
        ))
            .fold<IList<RepairRecord>>((l) => nil(), (r) => r);

        final maybeRating = await Future.wait(
          maybeLstRecord
              .filter(
                  (a) => a.maybeMap(orElse: () => false, finished: (v) => true))
              .map(
                (a) => a.maybeMap(
                  finished: (v) async => tuple2(
                    await Task.value(
                      (await _userStore.get(v.cid)).fold<Option<AppUser>>(
                        (l) => none(),
                        some,
                      ),
                    ).run(),
                    v.feedback,
                  ),
                  orElse: () => throw NullThrownError(),
                ),
              )
              .toIterable(),
        );

        final filterUser =
            maybeRating.where((element) => element.value1.isSome()).toList();

        final feedbacks = filterUser.map(
          (e) => RatingData.fromDtos(
            e.value1.getOrElse(() => throw NullThrownError()),
            e.value2,
          ),
        );

        final boxRprRecord = Hive.box<dynamic>('repairRecord');
        final vehicle = boxRprRecord
            .get('vehicle', defaultValue: 'no description yet')
            .toString();
        final cate = vehicle == 'car' ? 'Oto' : 'Xe máy';

        final catData = (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).all())
            .map(
              (r) => r.map(
                (a) async => tuple2<RepairCategory, IList<ServiceData>>(
                  a,
                  (await storeRepository
                          .repairServiceRepo(maybeProviderData, a)
                          .all())
                      .fold<IList<ServiceData>>(
                    (l) => ilist([]),
                    (r) => r.map(
                      ServiceData.fromDtos,
                    ),
                  ),
                ),
              ),
            )
            .fold<IList<Future<Tuple2<RepairCategory, IList<ServiceData>>>>>(
              (l) => throw NullThrownError(),
              (r) => r,
            );

        final categories =
            (await Future.wait(catData.toIterable())).map((e) => e).toList();
        final catAndSv = await (await (storeRepository.repairCategoryRepo(
          maybeProviderData,
        )).get(cate))
            .map(
              (a) async => tuple2<RepairCategory, IList<ServiceData>>(
                a,
                (await storeRepository
                        .repairServiceRepo(maybeProviderData, a)
                        .all())
                    .fold<IList<ServiceData>>(
                  (l) => ilist([]),
                  (r) => r.map(
                    ServiceData.fromDtos,
                  ),
                ),
              ),
            )
            .fold((l) => throw NullThrownError(), (r) => r);
        final svList = categories.map((e) {
          if (e.value1.name == cate) {
            return e.value2;
          } else {
            return nil<ServiceData>();
          }
        }).fold<IList<ServiceData>>(
          ilist(<ServiceData>[]),
          (previousValue, element) =>
              IListMonoid<ServiceData>().append(previousValue, element),
        );

        emit(
          RepairerProfileState.dataLoadSuccess(
            provider: providerData,
            ratingData: ilist(feedbacks),
            serviceData: svList,
            categories: catAndSv,
          ),
        );
      },
    );
  }
}
