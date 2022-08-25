part of 'upload_image_cubit.u.dart';

@freezed
class UploadImageSignupCubitState with _$UploadImageSignupCubitState {
  const factory UploadImageSignupCubitState.initial() = _Initial;
  const factory UploadImageSignupCubitState.uploadImageSuccess({
    required IList<Either<StorageFailure, String>> eitherFailuresOrUrls,
  }) = _UploadImageSuccess;
  const factory UploadImageSignupCubitState.failure() = _Failure;
  const factory UploadImageSignupCubitState.running() = _Running;
}
