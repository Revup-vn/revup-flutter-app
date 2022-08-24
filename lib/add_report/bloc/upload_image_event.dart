part of 'upload_image_bloc.dart';

@freezed
class UploadImageEvent with _$UploadImageEvent {
  const factory UploadImageEvent.started() = _Started;
  const factory UploadImageEvent.imageUploadSelected({
    required ImageSource source,
    required List<File> currentListStorage,
    required int typeUpload,
  }) = _ImageUploadSelected;
  const factory UploadImageEvent.remove({
    required List<File> currentListStorage,
    required int typeUpload,
  }) = _Remove;
}
