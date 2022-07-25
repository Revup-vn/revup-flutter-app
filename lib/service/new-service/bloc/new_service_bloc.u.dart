import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/service_data.dart';

part 'new_service_bloc.u.freezed.dart';
part 'new_service_event.dart';
part 'new_service_state.dart';

class NewServiceBloc extends Bloc<NewServiceEvent, NewServiceState> {
  NewServiceBloc() : super(const _Initial()) {
    on<ImageFromGallerySelected>(_onImageFromGallerySelected);
    on<PhotoWithCameraSelected>(_onPhotoWithCameraSelected);
    on<Submitted>(_onSubmitted);
  }

  Future<void> _onSubmitted(
    Submitted event,
    Emitter<NewServiceState> emit,
  ) async {
    emit(const NewServiceState.loading());
    // TODO(cantgim): save on firestore,
    // then emit data saved (id, image url,...)
    emit(NewServiceState.success(event.serviceData));
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
