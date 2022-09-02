part of 'countdown_bloc.dart';

@freezed
class CountdownEvent with _$CountdownEvent {
  const factory CountdownEvent.ticked(int secs) = _ticked;
  const factory CountdownEvent.timeout(Function0 onTimeOut) = _timeOut;
}
