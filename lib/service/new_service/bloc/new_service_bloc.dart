import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'new_service_bloc.freezed.dart';
part 'new_service_event.dart';
part 'new_service_state.dart';

class NewServiceBloc extends Bloc<NewServiceEvent, NewServiceState> {
  NewServiceBloc(this._userStore, this._repairRecord, this.sr, this.recordId)
      : super(_Initial()) {
    on<NewServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository sr;
  final String recordId;

  FutureOr<void> _onEvent(
    NewServiceEvent event,
    Emitter<NewServiceState> emit,
  ) async {
    await event.when(
      submitted: (onRoute, optionalService) async {
        emit(const NewServiceState.loading());
        await (sr.repairPaymentRepo(RepairRecordDummy.dummyAccepted(recordId)))
            .create(
              PaymentService.needToVerify(
                serviceName: optionalService.name,
                desc: optionalService.desc,
              ),
            )
            .then(
              (value) => value.fold(
                (l) => emit(const NewServiceState.failure()),
                (r) => r,
              ),
            );
        onRoute();
      },
    );
  }
}
