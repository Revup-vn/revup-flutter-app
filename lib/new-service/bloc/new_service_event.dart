part of 'new_service_bloc.dart';

@freezed
class NewServiceEvent with _$NewServiceEvent {
  const factory NewServiceEvent.started() = Started;
  const factory NewServiceEvent.imageFromGallerySelected() =
      ImageFromGallerySelected;
  const factory NewServiceEvent.photoWithCameraSelected() =
      PhotoWithCameraSelected;
}
