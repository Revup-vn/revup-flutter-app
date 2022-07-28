part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.failure() = _Failure;
  const factory ProfileState.success() = _Success;
  const factory ProfileState.loaded({
    required String fullName,
    required String email,
    required String phone,
    required DateTime date,
    required String address,
  }) = _Loaded;
}
