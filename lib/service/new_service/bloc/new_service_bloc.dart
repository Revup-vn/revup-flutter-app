import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'new_service_bloc.freezed.dart';
part 'new_service_event.dart';
part 'new_service_state.dart';

class NewServiceBloc extends Bloc<NewServiceEvent, NewServiceState> {
  NewServiceBloc(
    this._userStore,
    this._repairRecord,
    this.sr,
    this.recordId,
    this.storageBloc,
  ) : super(const _Initial()) {
    on<NewServiceEvent>(_onEvent);
  }
  final IStore<AppUser> _userStore;
  final IStore<RepairRecord> _repairRecord;
  final StoreRepository sr;
  final String recordId;
  final StorageBloc storageBloc;
  FutureOr<void> _onEvent(
    NewServiceEvent event,
    Emitter<NewServiceState> emit,
  ) async {
    await event.when(
      submitted: (onRoute, optionalService) async {
        emit(const NewServiceState.loading());
        final complter = Completer<String>();
        if (optionalService.img.isNotEmpty) {
          await uploadImg(
            file: StorageFile.profile(file: File(optionalService.img)),
            emit: emit,
            completer: complter,
          );
        } else {
          complter.complete('');
        }
        final imgUrl = await complter.future;
        await (sr.repairPaymentRepo(RepairRecordDummy.dummyAccepted(recordId)))
            .create(
              PaymentService.needToVerify(
                serviceName: optionalService.name,
                desc: optionalService.desc,
                imgUrl: imgUrl,
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

  Future<Unit> uploadImg({
    required StorageFile file,
    required Emitter<NewServiceState> emit,
    required Completer<String> completer,
  }) async {
    final isDoneLogin = Completer<Unit>();
    storageBloc.add(StorageEvent.upload(file: file));
    await _listenOnce(
      isDoneLogin,
      (event) async => event.maybeWhen(
        orElse: () => false,
        success: (eitherFailuresOrUrls) => eitherFailuresOrUrls.map(
          (a) => a.fold(
            (l) => emit(
              const NewServiceState.failure(),
            ),
            (newImgUrl) => completer.complete(newImgUrl),
          ),
        ),
      ),
    );

    return unit;
  }

  Future<Unit> _listenOnce(
    Completer<Unit> isDone,
    Function1<StorageState, void> map,
  ) async {
    final _tmp = storageBloc.stream.listen(
      (event) {
        map(event);
        event.maybeMap(
          success: (value) => isDone.complete(unit),
          orElse: () => unit,
        );
      },
    );
    await isDone.future;
    await _tmp.cancel();

    return unit;
  }
}
