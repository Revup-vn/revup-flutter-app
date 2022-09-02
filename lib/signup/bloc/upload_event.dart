part of 'upload_bloc.u.dart';

@freezed
class UploadEvent with _$UploadEvent {
  const factory UploadEvent.started() = _Started;
  const factory UploadEvent.imageUploadSelected({
    required ImageSource source,
  }) = _ImageUploadSelected;
}
