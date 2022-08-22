import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'upload_image_cubit.u.freezed.dart';
part 'upload_image_cubit_state.dart';

class SignupUploadImageCubit extends Cubit<UploadImageSignupCubitState> {
  SignupUploadImageCubit(this._storageBloc)
      : super(const UploadImageSignupCubitState.initial());

  final StorageBloc _storageBloc;

  Future<Unit> uploadImg({required StorageFile file}) async {
    final isDoneLogin = Completer<Unit>();
    _storageBloc.add(StorageEvent.upload(file: file));

    return _listenOnce(
      isDoneLogin,
      (event) async => event.maybeWhen(
        success: (eitherFailuresOrUrls) => emit(
          UploadImageSignupCubitState.uploadImageSuccess(
            eitherFailuresOrUrls: eitherFailuresOrUrls,
          ),
        ),
        error: (failure) => emit(const UploadImageSignupCubitState.failure()),
        orElse: () => emit(
          const UploadImageSignupCubitState.running(),
        ),
      ),
    );
  }

  Future<Unit> _listenOnce(
    Completer<Unit> isDone,
    Function1<StorageState, void> map,
  ) async {
    final _tmp = _storageBloc.stream.listen(
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
