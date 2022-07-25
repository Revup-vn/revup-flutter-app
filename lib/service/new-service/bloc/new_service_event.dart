part of 'new_service_bloc.u.dart';

@freezed
class NewServiceEvent with _$NewServiceEvent {
  const factory NewServiceEvent.started() = Started;
  const factory NewServiceEvent.submitted(ServiceData serviceData) = Submitted;
  const factory NewServiceEvent.imageFromGallerySelected() =
      ImageFromGallerySelected;
  const factory NewServiceEvent.photoWithCameraSelected() =
      PhotoWithCameraSelected;
}
