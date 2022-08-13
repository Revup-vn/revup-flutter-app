import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../model/history_model.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(
    this._userStore,
    this.storeRepository,
    this._repairRecord,
    this.user,
  ) : super(const _Initial()) {
    on<HistoryEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final StoreRepository storeRepository;
  final IStore<RepairRecord> _repairRecord;
  final AppUser user;
  Future<void> _onEvent(
    HistoryEvent event,
    Emitter<HistoryState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const HistoryState.loading());
        final maybeHistories =
            (await _repairRecord.where('cid', isEqualTo: user.uuid))
                .map<IList<RepairRecord>>(
                  (r) => r.filter(
                    (a) => a.maybeMap(
                      aborted: (v) => true,
                      finished: (v) => true,
                      orElse: () => false,
                    ),
                  ),
                )
                .map(
                  (r) => r.map(
                    (a) async => tuple3(
                      (await _userStore.get(a.pid))
                          .fold((l) => throw NullThrownError(), (r) => r),
                      a,
                      (await storeRepository.repairPaymentRepo(a).all())
                          .map(
                            (r) => r.map(
                              (a) => a.maybeMap<Option<PaymentService>>(
                                paid: (value) => some(a),
                                orElse: none,
                              ),
                            ),
                          )
                          .fold(
                            (l) => throw NullThrownError(),
                            (r) => r.map(
                              (a) => a.getOrElse(
                                () => throw NullThrownError(),
                              ),
                            ),
                          ),
                    ),
                  ),
                )
                .fold((l) => throw NullThrownError(), (r) => r);
        final histories = (await Future.wait(maybeHistories.toIterable())).map(
          (e) => HistoryModel.fromDtos(e.value2, e.value1, e.value3),
        );

        emit(HistoryState.success(ilist(histories)));
      },
    );
  }
}
