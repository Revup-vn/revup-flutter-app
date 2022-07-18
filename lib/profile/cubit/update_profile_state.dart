part of 'update_profile_cubit.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _Initial;
  const factory UpdateProfileState.loading() = Loading;
  const factory UpdateProfileState.loaded({
    required String fullName,
    required String email,
    required String phone,
    required String date,
    required String address,
  }) = Loaded;
}
