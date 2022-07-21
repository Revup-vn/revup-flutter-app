import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'new_service_bloc.freezed.dart';
part 'new_service_event.dart';
part 'new_service_state.dart';

class NewServiceBloc extends Bloc<NewServiceEvent, NewServiceState> {
  NewServiceBloc() : super(const _Initial()) {
    on<ImageFromGallerySelected>(_onImageFromGallerySelected);
    on<PhotoWithCameraSelected>(_onPhotoWithCameraSelected);
  }

  Future<void> _onImageFromGallerySelected(
    ImageFromGallerySelected event,
    Emitter<NewServiceState> emit,
  ) async {
    final _picker = ImagePicker();

    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final _image = File(pickedImage.path);
      emit(NewServiceState.choosePhotoSuccess(_image));
    }
  }

  Future<void> _onPhotoWithCameraSelected(
    PhotoWithCameraSelected event,
    Emitter<NewServiceState> emit,
  ) async {
    final _picker = ImagePicker();

    final photo = await _picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      final _image = File(photo.path);
      emit(NewServiceState.choosePhotoSuccess(_image));
    }
  }
}
