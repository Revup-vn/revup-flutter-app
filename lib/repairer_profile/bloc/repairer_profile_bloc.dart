import 'dart:async';

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
    this._providerID,
    this._provider,
    this._repairRecord,
    this.storeRepository,
  ) : super(const _Initial()) {
    on<RepairerProfileEvent>(_onEvent);
  }
  final String _providerID;
  final IStore<AppUser> _provider;
  final StoreRepository storeRepository;
  final IStore<RepairRecord> _repairRecord;

  FutureOr<void> _onEvent(
    RepairerProfileEvent event,
    Emitter<RepairerProfileState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const RepairerProfileState.loading());
        final maybeProviderData = (await _provider.get(_providerID))
            .map(
              (aUser) => aUser.map<Option<AppUser>>(
                provider: some,
                admin: (value) => none(),
                consumer: (value) => none(),
              ),
            )
            .fold<Option<AppUser>>((l) => none(), (r) => r);

        final mayBeCidAndFeedback = await maybeProviderData
            .fold<Future<Option<Tuple2<String, Feedback>>>>(
          () async => none(),
          (a) async => (await _repairRecord.get(a.uuid))
              .toOption()
              .flatMap<Tuple2<String, Feedback>>(
                (r) => r.maybeMap(
                  orElse: none,
                  finished: (r) => some(
                    tuple2(
                      r.cid,
                      r.feedback,
                    ),
                  ),
                ),
              ),
        );

        // ignore: unused_local_variable
        final maybeCustomerData =
            await mayBeCidAndFeedback.fold<Future<Option<AppUser>>>(
          () async => none(),
          (a) async => (await _provider.get(a.value1)).toOption(),
        );

        // final rating =
        //     (await _repairRecord.where('pid', isEqualTo: _providerID));
        //         .map<IList<Option<RecordRatingData>>>(
        //   (r) => r.map(
        //     (a) => a.maybeMap(
        //       orElse: none,
        //       finished: (v) => some(
        //         RecordRatingData.fromDtos(v),
        //       ),
        //     ),
        //   ),
        // );
        // .map<IList<RecordRatingData>>(
        //   (r) => r.filter((a) => a.isSome()).map(
        //         (a) => a.getOrElse(
        //           () => throw NullThrownError(),
        //         ),
        //       ),
        // )
        // .map(
        //   (r) =>
        //       r
        //           .map((a) => a.feedback.rating)
        //           .foldLeft<int>(0, (previous, a) => previous + a) /
        //       r.length(),
        // )
        // .fold((l) => 0.0, (r) => r);

        final maybeCategoryService =
            maybeProviderData.fold<Option<IStore<RepairCategory>>>(
          none,
          (a) => some(
            storeRepository.repairCategoryRepo(a),
          ),
        );

        final mayBeCategories = await maybeCategoryService
            .fold<Future<Option<IList<RepairCategory>>>>(
          () async => none(),
          (a) async => (await a.all()).toOption(),
        );

        final mayBeIStoreServices = mayBeCategories
            .map(
              (cates) => cates.map(
                (cate) => maybeProviderData.map(
                  (user) => storeRepository.repairServiceRepo(user, cate),
                ),
              ),
            )
            .fold<IList<IStore<RepairService>>>(
              nil,
              (a) => a.filter((a) => a.isSome()).map<IStore<RepairService>>(
                    (a) => a.getOrElse(() => throw NullThrownError()),
                  ),
            );

        final maybeListServices = await Future.wait(
          mayBeIStoreServices.map((a) async => a.all()).toIterable(),
        );
        final services = IList.from(
          maybeListServices.where((element) => element.isRight()).expand(
                (e) => e.getOrElse(() => throw NullThrownError()).toIterable(),
              ),
        ).map<ServiceData>(ServiceData.fromDtos);

        await maybeProviderData.fold(() async => null, (provider) async {
          emit(
            RepairerProfileState.dataLoadSuccess(
              provider: ProviderData.fromDtos(
                provider,
                distance: 0,
                duration: 0,
                rating: 0,
                ratingCount: 0,
              ),
              ratingData: fetchRatingData(),
              serviceData: services,
            ),
          );
        });
      },
    );
  }

  IList<RatingData> fetchRatingData() {
    final listServiceData = ilist(
      <RatingData>[
        RatingData(
          createdTime: DateTime.now(),
          description: 'Thợ sửa rất có tâm và có tầm',
          rating: 4,
          updatedTime: DateTime.now(),
          consumerName: 'Khach Hang A',
          imageUrl:
              'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
        ),
        RatingData(
          createdTime: DateTime.now(),
          description: 'Thợ sửa rất có tâm và có tầm',
          rating: 5,
          updatedTime: DateTime.now(),
          consumerName: 'Khach Hang Dep Trai',
          imageUrl:
              'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
        ),
        RatingData(
          createdTime: DateTime.now(),
          description: 'Thợ sửa rất có tâm và có tầm',
          rating: 5,
          updatedTime: DateTime.now(),
          consumerName: 'Khach Hang Xau Trai',
          imageUrl:
              'https://i.pinimg.com/564x/6d/ba/ee/6dbaee5de0f568b75e0bc7a8fa1576b1.jpg',
        ),
      ],
    );

    return listServiceData;
  }
}
