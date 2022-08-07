import 'dart:async';
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
    on<NewServiceEvent>(_onEvent);
  }

  final ImagePicker _imagePicker;

  FutureOr<void> _onEvent(
    NewServiceEvent event,
    Emitter<NewServiceState> emit,
  ) async {
    await event.when(
      started: () {
        // TODO(cantgim): implement sthg
      },
      submitted: (serviceData) {
        emit(const NewServiceState.loading());
        emit(NewServiceState.success(serviceData));
      },
      imageUploadSelected: (source) async {
        final pickedImage = await _imagePicker.pickImage(source: source);
        if (pickedImage != null) {
          final _image = File(pickedImage.path);
          emit(NewServiceState.choosePhotoSuccess(_image));
        }
      },
    );
  }
}
