part of 'new_service_bloc.dart';

@freezed
class NewServiceState with _$NewServiceState {
  const factory NewServiceState.initial() = _Initial;
  const factory NewServiceState.choosePhotoSuccess(File image) =
      _NewServiceState;
}
