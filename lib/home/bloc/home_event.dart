part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.submited({
    required int type,
    required Function2<num, num, void> onRoute,
  }) = _Submited;
}
