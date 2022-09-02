part of 'countdown_bloc.dart';

@freezed
class CountdownState with _$CountdownState {
  const factory CountdownState.countdownInProgress(int secs) =
      _CountdownInProgress;
  const factory CountdownState.initial([
    @Default(CountdownBloc.kDuration) int secs,
  ]) = _Initial;
  const factory CountdownState.countdownComplete([@Default(0) int secs]) =
      _countdownComplete;
}
