part of 'upload_bloc.u.dart';

@freezed
class UploadState with _$UploadState {
  const factory UploadState.initial() = _Initial;
  const factory UploadState.choosePhotoSuccess({required File file}) =
      _ChoosePhotoSuccess;
}
