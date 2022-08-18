import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'signup_bloc.u.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(this._imagePicker) : super(const _Initial()) {
    on<SignupEvent>(_onEvent);
  }
  final ImagePicker _imagePicker;

  FutureOr<void> _onEvent(
    SignupEvent event,
    Emitter<SignupState> emit,
  ) async {
    await event.when(
      started: () {
        emit(const SignupState.initial());
      },
      imageUploadSelected: (source) async {
        final pickedImage = await _imagePicker.pickImage(source: source);
        if (pickedImage != null) {
          final _image = File(pickedImage.path);
          emit(SignupState.choosePhotoSuccess(file: _image));
        }
      },
    );
  }
}
