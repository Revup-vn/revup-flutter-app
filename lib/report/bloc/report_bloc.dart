import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../model/report_model.dart';

part 'report_bloc.freezed.dart';
part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc(
    this.cid,
    this.userRepos,
    this.recordRepos,
  ) : super(const _Initial()) {
    on<ReportEvent>(_onEvent);
    _s = recordRepos
        .collection()
        .where('cid', isEqualTo: cid)
        .snapshots()
        .listen((event) {
      add(const ReportEvent.started());
    });
  }
  final String cid;
  final IStore<AppUser> userRepos;
  final IStore<RepairRecord> recordRepos;
  late final StreamSubscription<QuerySnapshot<Map<String, dynamic>>> _s;

  FutureOr<void> _onEvent(
    ReportEvent event,
    Emitter<ReportState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const ReportState.loading());
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
        final t = list.fold<IList<Future<Option<ReportModel>>>>(
          (l) => nil(),
          (r) => r.map((rpRc) async {
            final userF = Completer<AppUser>();
            await (userRepos.get(rpRc.pid)).then(
              (value) => value.fold(
                (left) => null,
                userF.complete,
              ),
            );
            final user = await userF.future;
            return rpRc.maybeMap<Option<ReportModel>>(
              orElse: none,
              finished: (value) {
                if (value.report != null) {
                  return some(
                    ReportModel(
                      provider: user,
                      from: rpRc.from.name,
                      to: rpRc.to.name,
                      orderID: rpRc.id,
                      cate: value.report!.category,
                      status: value.report!.map(
                        unresolved: (value) => 0,
                        resolved: (value) => 1,
                        canceled: (value) => 2,
                      ),
                      pid: rpRc.pid,
                      created: value.report!.created,
                      end: value.report!.map(
                        canceled: (canceled) => canceled.closed,
                        resolved: (resolved) => resolved.resolved,
                        unresolved: (value) => DateTime.now(),
                      ),
                      desc: value.report!.desc,
                      aid: value.report!.maybeMap(
                        orElse: () => '',
                        resolved: (x) => x.aId,
                      ),
                    ),
                  );
                } else {
                  return none();
                }
              },
              aborted: (value) {
                if (value.report != null) {
                  some(
                    ReportModel(
                      provider: user,
                      from: rpRc.from.name,
                      to: rpRc.to.name,
                      orderID: rpRc.id,
                      cate: value.report!.category,
                      status: value.report!.map(
                        unresolved: (value) => 0,
                        resolved: (value) => 1,
                        canceled: (value) => 2,
                      ),
                      pid: rpRc.pid,
                      created: value.report!.created,
                      end: value.report!.map(
                        canceled: (canceled) => canceled.closed,
                        resolved: (resolved) => resolved.resolved,
                        unresolved: (value) => DateTime.now(),
                      ),
                      desc: value.report!.desc,
                      aid: value.report!.maybeMap(
                        orElse: () => '',
                        resolved: (x) => x.aId,
                      ),
                    ),
                  );
                }
                return none();
              },
            );
          }),
        );
        final iT = (await Future.wait(t.toIterable()))
            .where((element) => element.isSome())
            .map(
              (e) => e.getOrElse(
                () => throw NullThrownError(),
              ),
            );
        final tmp = iT.toList();
        emit(ReportState.success(tmp));
      },
    );
  }

  @override
  Future<void> close() async {
    await _s.cancel();
    return super.close();
  }
}
