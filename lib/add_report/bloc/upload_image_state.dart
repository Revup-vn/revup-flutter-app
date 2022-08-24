part of 'upload_image_bloc.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.choosePhotoSuccess({
    required List<File> file,
  }) = _Success;
  const factory UploadImageState.failure() = _Failure;
  const factory UploadImageState.loading() = _Loading;
}
