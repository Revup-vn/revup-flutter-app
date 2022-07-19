import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'new_service_event.dart';
part 'new_service_state.dart';
part 'new_service_bloc.freezed.dart';

class NewServiceBloc extends Bloc<NewServiceEvent, NewServiceState> {
  NewServiceBloc() : super(_Initial()) {
    on<Started>(_onPhotoUploadRequested);
  }

  Future<void> _onPhotoUploadRequested(
    Started event,
    Emitter<NewServiceState> emit,
  ) async {
    final _picker = ImagePicker();

    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final _image = File(pickedImage.path);
      emit(NewServiceState.choosePhotoSuccess(_image));
    }
  }
}
