import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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

        final categories =
            (await Future.wait(catData.toIterable())).map((e) => e).toList();

        final svList = categories.map((e) => e.value2).fold<IList<ServiceData>>(
              ilist(<ServiceData>[]),
              (previousValue, element) =>
                  IListMonoid<ServiceData>().append(previousValue, element),
            );

        emit(
          RepairerProfileState.dataLoadSuccess(
            provider: providerData,
            ratingData: ilist(feedbacks),
            serviceData: svList,
            categories: categories,
          ),
        );
      },
    );
  }
}
