import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../models/service_data.dart';

part 'new_service_bloc.freezed.dart';
part 'new_service_event.dart';
part 'new_service_state.dart';

class NewServiceBloc extends Bloc<NewServiceEvent, NewServiceState> {
  NewServiceBloc(this._imagePicker) : super(const _Initial()) {
    on<ImageUploadSelected>(_onImageUploadSelected);
    on<Submitted>(_onSubmitted);
  }

  final ImagePicker _imagePicker;

  Future<void> _onSubmitted(
    Submitted event,
    Emitter<NewServiceState> emit,
  ) async {
    emit(const NewServiceState.loading());
    // TODO(cantgim): save on firestore,
    // then emit data saved (id, image url,...)
    emit(NewServiceState.success(event.serviceData));
  }

  Future<void> _onImageUploadSelected(
    ImageUploadSelected event,
    Emitter<NewServiceState> emit,
  ) async {
    final pickedImage = await _imagePicker.pickImage(source: event.source);
    if (pickedImage != null) {
      final _image = File(pickedImage.path);
      emit(NewServiceState.choosePhotoSuccess(_image));
    }
  }
}
