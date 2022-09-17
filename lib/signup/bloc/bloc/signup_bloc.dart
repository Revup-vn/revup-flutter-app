import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:connectycube_sdk/connectycube_calls.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../../configs/video_call_config.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(this.storageBloc) : super(const _Initial()) {
    on<SignupEvent>(_onEvent);
  }
  final StorageBloc storageBloc;
  FutureOr<void> _onEvent(
    SignupEvent event,
    Emitter<SignupState> emit,
  ) async {
    await event.when(
      started: () {},
      submited: (aUser, imgFile, completer) async {
        emit(const SignupState.loading());
        final imgDt = Completer<String>();
        if (imgFile.path.isEmpty) {
          imgDt.complete('');
        } else {
          await uploadImg(
            file: StorageFile.profile(file: imgFile),
            emit: emit,
            completer: imgDt,
          );
        }
        final imgUrl = await imgDt.future;
        final cubeUser = CubeUser(
          login: aUser.phone,
          password: DEFAULT_PASS,
        );
        await signUp(cubeUser);
        completer.complete(
          aUser.copyWith(
            avatarUrl: imgUrl.isEmpty ? aUser.avatarUrl : imgUrl,
          ),
        );
        emit(const SignupState.success());
      },
    );
  }

  Future<Unit> uploadImg({
    required StorageFile file,
    required Emitter<SignupState> emit,
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
            (l) => completer.complete(''),
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
