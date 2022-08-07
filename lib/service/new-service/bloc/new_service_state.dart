part of 'new_service_bloc.dart';

@freezed
class NewServiceState with _$NewServiceState {
  const factory NewServiceState.initial() = _Initial;
  const factory NewServiceState.loading() = _Loading;
  const factory NewServiceState.failure() = _Failure;
  const factory NewServiceState.success() = _Success;
}
