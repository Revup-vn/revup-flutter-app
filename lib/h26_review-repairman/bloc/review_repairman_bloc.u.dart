import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../account/model/record_rating_data.dart';
import '../../h2_find_provider/models/provider_data.u.dart';

part 'review_repairman_bloc.u.freezed.dart';
part 'review_repairman_event.dart';
part 'review_repairman_state.dart';

class ReviewRepairmanBloc
    extends Bloc<ReviewRepairmanEvent, ReviewRepairmanState> {
  ReviewRepairmanBloc(
    this.providerId,
    this.repairId,
    this._userRepos,
    this._repairRecord,
  ) : super(const _Initial()) {
    on<ReviewRepairmanEvent>(_onEvent);
  }
  final String providerId;
  final String repairId;
  final IStore<AppUser> _userRepos;
  final IStore<RepairRecord> _repairRecord;
  FutureOr<void> _onEvent(
    ReviewRepairmanEvent event,
    Emitter<ReviewRepairmanState> emit,
  ) async {
    await event.when(
      started: () async {
        final maybeProviderData = (await _userRepos.get(providerId))
            .map(
              (aUser) => aUser.map<Option<AppUser>>(
                provider: some,
                admin: (value) => none(),
                consumer: (value) => none(),
              ),
            )
            .fold<Option<AppUser>>((l) => none(), (r) => r);

        //fetch data rating,
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
        maybeProviderData.fold(
          () => emit(
            const ReviewRepairmanState.loading(),
          ),
          (provider) {
            emit(
              ReviewRepairmanState.loadDataSuccess(
                data: ProviderData.fromDtos(
                  provider,
                  distance: 0,
                  duration: 0,
                  rating: double.parse(ratingData['value1'].toString()),
                  ratingCount: int.parse(ratingData['value2'].toString()),
                ),
              ),
            );
          },
        );
      },
      submited: (
        feedback,
      ) async {
        emit(const ReviewRepairmanState.loading());
        final repairRecordDummy =
            RepairRecordDummy.dummyFinished(repairId).maybeMap(
          orElse: () => RepairRecordDummy.dummyFinished(repairId),
          finished: (value) => value.copyWith(feedback: feedback),
        );
        (await _repairRecord.updateFields(
          repairRecordDummy,
          ilist(
            [RepairRecordDummy.field(RepairRecordFields.Feedback)],
          ),
        ))
            .fold(
          (l) => emit(const ReviewRepairmanState.failure()),
          (r) => emit(
            const ReviewRepairmanState.success(),
          ),
        );
      },
    );
  }
}
