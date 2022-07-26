part of 'new_service_bloc.dart';

@freezed
class NewServiceEvent with _$NewServiceEvent {
  const factory NewServiceEvent.started() = Started;
  const factory NewServiceEvent.submitted(ServiceData serviceData) = Submitted;
  const factory NewServiceEvent.imageUploadSelected(ImageSource source) =
      ImageUploadSelected;
}
