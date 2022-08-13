part of 'image_picker_bloc.u.dart';

@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.initial() = _Initial;
  const factory ImagePickerState.choosePhotoSuccess(File image) =
      _ChoosePhotoSuccess;
}
