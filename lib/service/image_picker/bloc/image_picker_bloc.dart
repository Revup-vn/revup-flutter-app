import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'image_picker_bloc.freezed.dart';
part 'image_picker_event.dart';
part 'image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  ImagePickerBloc(this._imagePicker) : super(const _Initial()) {
    on<ImagePickerEvent>(_onEvent);
  }
  final ImagePicker _imagePicker;

  FutureOr<void> _onEvent(
    ImagePickerEvent event,
    Emitter<ImagePickerState> emit,
  ) async {
    await event.when(
      started: () {},
      imageUploadSelected: (source) async {
        final pickedImage = await _imagePicker.pickImage(source: source);
        if (pickedImage != null) {
          final _image = File(pickedImage.path);
          emit(ImagePickerState.choosePhotoSuccess(_image));
        }
      },
    );
  }
}
