import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../models/history_item_model.dart';

part 'history_bloc.u.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryProviderBloc
    extends Bloc<HistoryProviderEvent, HistoryProviderState> {
  HistoryProviderBloc(
    this.cid,
    this.userRepos,
    this.recordRepos,
  ) : super(const _Initial()) {
    on<HistoryProviderEvent>(_onEventHistory);

    _s = recordRepos
        .collection()
        .where('cid', isEqualTo: cid)
        .snapshots()
        .listen((event) {
      add(const HistoryProviderEvent.started());
    });
  }
  final String cid;
  final IStore<AppUser> userRepos;
  final IStore<RepairRecord> recordRepos;
  late final StreamSubscription<QuerySnapshot<Map<String, dynamic>>> _s;
  Future<void> _onEventHistory(
    HistoryProviderEvent event,
    Emitter<HistoryProviderState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const HistoryProviderState.loading());
        final listRepairRecord =
            Completer<Either<StoreFailure, IList<RepairRecord>>>();
        (await recordRepos.where('cid', isEqualTo: cid))
            .map(
              (r) => r.map(
                (a) => a.maybeMap<Option<RepairRecord>>(
                  orElse: none,
                  finished: some,
                  aborted: some,
                ),
              ),
            )
            .map(
              (r) => r.filter((a) => a.isSome()).map(
                    (a) => a.getOrElse(
                      () => throw NullThrownError(),
                    ),
                  ),
            )
            .fold(
              (l) => listRepairRecord.complete(left(l)),
              (r) => listRepairRecord.complete(
                right(r),
              ),
            );
        final list = await listRepairRecord.future;
        final listModel = list.fold<IList<Future<HistoryItemModel>>>(
          (l) => nil(),
          (r) => r.map((a) async {
            final providerFuture = Completer<AppUser>();
            (await userRepos.get(a.pid))
                .fold((l) => null, providerFuture.complete);
            final provider = await providerFuture.future;
            return HistoryItemModel.fromProviderModel(a, provider);
          }),
        );

        final listData =
            await Future.wait(listModel.map((a) async => a).toIterable());
        listData.sort(
          (a, b) => b.timeCreated.millisecondsSinceEpoch
              .compareTo(a.timeCreated.millisecondsSinceEpoch),
        );
        emit(
          HistoryProviderState.success(listData),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _s.cancel();
    return super.close();
  }
}
