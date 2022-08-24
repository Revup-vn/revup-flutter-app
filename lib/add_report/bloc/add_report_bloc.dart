import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'add_report_bloc.freezed.dart';
part 'add_report_event.dart';
part 'add_report_state.dart';

class AddReportBloc extends Bloc<AddReportEvent, AddReportState> {
  AddReportBloc(
    this.recordID,
    this.storeRepos,
    this.repairRepos,
  ) : super(const _Initial()) {
    on<AddReportEvent>(_onEvent);
  }
  final String recordID;
  final StoreRepository storeRepos;
  final IStore<RepairRecord> repairRepos;
  FutureOr<void> _onEvent(
    AddReportEvent event,
    Emitter<AddReportState> emit,
  ) async {
    await event.when(
      started: () {},
      submited: (rpSubmit) async {
        final updated = Completer<Either<StoreFailure, Unit>>();
        final completer = Completer<Either<StoreFailure, RepairReport>>();
        (await repairRepos.get(recordID)).map<Option<RepairReport>>(
          (rp) {
            return rp.maybeMap(
              orElse: none,
              finished: (value) {
                if (value.report != null) {
                  return some(value.report!);
                } else {
                  return none();
                }
              },
              aborted: (value) {
                if (value.report != null) {
                  return some(value.report!);
                } else {
                  return none();
                }
              },
            );
          },
        ).fold(
          (l) => completer.complete(left(l)),
          (r) => r.fold(
            () async {
              (await repairRepos.get(recordID)).map(
                (rprc) async {
                  await rprc
                      .maybeMap<Option<RepairRecord>>(
                    orElse: none,
                    aborted: (value) => some(value.copyWith(report: rpSubmit)),
                    finished: (value) => some(
                      value.copyWith(report: rpSubmit),
                    ),
                  )
                      .fold(() => null, (a) async {
                    final newData = a;
                    final tmp = await repairRepos.updateFields(
                      newData,
                      ilist([
                        RepairRecordDummy.field(
                          RepairRecordFields.Report,
                        ),
                      ]),
                    );
                    tmp.fold(
                      (l) => updated.complete(left(l)),
                      (r) => updated.complete(
                        right(r),
                      ),
                    );
                  });
                },
              );
            },
            (a) => completer.complete(
              right(a),
            ),
          ),
        );
        final res = await completer.future;
        res.fold((l) => emit(const AddReportState.failure()), (r) async {
          (await repairRepos.get(recordID)).map(
            (rprc) async {
              await rprc
                  .maybeMap<Option<RepairRecord>>(
                orElse: none,
                aborted: (value) => some(value.copyWith(report: rpSubmit)),
                finished: (value) => some(
                  value.copyWith(report: rpSubmit),
                ),
              )
                  .fold(() => null, (a) async {
                final newData = a;
                final tmp = await repairRepos.updateFields(
                  newData,
                  ilist([
                    RepairRecordDummy.field(
                      RepairRecordFields.Report,
                    ),
                  ]),
                );
                tmp.fold(
                  (l) => updated.complete(left(l)),
                  (r) => updated.complete(
                    right(r),
                  ),
                );
              });
            },
          );
        });
        final completedUpdate = await updated.future;
        completedUpdate.fold(
          (l) => emit(const AddReportState.failure()),
          (r) => emit(
            const AddReportState.success(),
          ),
        );
      },
    );
  }
}
