import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../find_provider/models/provider_data.u.dart';
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

        // final mayBeCidAndFeedback = await maybeProviderData
        //     .fold<Future<Option<Tuple2<String, Feedback>>>>(
        //   () async => none(),
        //   (a) async => (await _repairRecord.get(a.uuid))
        //       .toOption()
        //       .flatMap<Tuple2<String, Feedback>>(
        //         (r) => r.maybeMap(
        //           orElse: none,
        //           finished: (r) => some(
        //             tuple2(
        //               r.cid,
        //               r.feedback,
        //             ),
        //           ),
        //         ),
        //       ),
        // );
        final feedbackData = (await _repairRecord.where(providerData.id))
            .map(
              (r) => r.map(
                (a) => a.maybeMap(
                  orElse: () => throw NullThrownError(),
                  finished: (v) async => tuple2(
                    (await _userStore.get(v.cid)).fold<AppUser>(
                      (l) => throw NullThrownError(),
                      (r) => r,
                    ),
                    v.feedback,
                  ),
                ),
              ),
            )
            .fold<IList<Future<Tuple2<AppUser, Feedback>>>>(
              (l) => throw NullThrownError(),
              (r) => r,
            );

        final feedbacks = (await Future.wait(feedbackData.toIterable()))
            .map((e) => RatingData.fromDtos(e.value1, e.value2));

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

        final categories = (await Future.wait(catData.toIterable()))
            .map(
              (e) => e,
            )
            .toList();

        print(categories);

        final svList = categories.map((e) => e.value2).fold<IList<ServiceData>>(
              ilist(<ServiceData>[]),
              (previousValue, element) =>
                  IListMonoid<ServiceData>().append(previousValue, element),
            );
        print(svList);

        //     .fold(
        //   (l) => throw NullThrownError(),
        //   (r) => r,
        // ).map((a) => (await storeRepository.repairServiceRepo(maybeProviderData, category)))

        // final maybeCategoryService =
        //     maybeProviderData.fold<Option<IStore<RepairCategory>>>(
        //   none,
        //   (a) => some(
        //     storeRepository.repairCategoryRepo(a),
        //   ),
        // );

        // final mayBeCategories = await maybeCategoryService
        //     .fold<Future<Option<IList<RepairCategory>>>>(
        //   () async => none(),
        //   (a) async => (await a.all()).toOption(),
        // );

        // final mayBeIStoreServices = mayBeCategories
        //     .map(
        //       (cates) => cates.map(
        //         (cate) => maybeProviderData.map(
        //           (user) => storeRepository.repairServiceRepo(user, cate),
        //         ),
        //       ),
        //     )
        //     .fold<IList<IStore<RepairService>>>(
        //       nil,
        //       (a) => a.filter((a) => a.isSome()).map<IStore<RepairService>>(
        //             (a) => a.getOrElse(() => throw NullThrownError()),
        //           ),
        //     );

        // final maybeListServices = await Future.wait(
        //   mayBeIStoreServices.map((a) async => a.all()).toIterable(),
        // );
        // final services = IList.from(
        //   maybeListServices.where((element) => element.isRight()).expand(
        //         (e) => e.getOrElse(() => throw NullThrownError()).toIterable(),
        //       ),
        // ).map<ServiceData>(ServiceData.fromDtos);

        emit(RepairerProfileState.dataLoadSuccess(
          provider: providerData,
          ratingData: ilist(feedbacks),
          serviceData: svList,
        ));
      },
    );
  }
}
