part of 'image_picker_bloc.u.dart';

@freezed
class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.started() = _Started;
  const factory ImagePickerEvent.imageUploadSelected(ImageSource source) =
      _ImageUploadSelected;
}
