import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countdown_event.dart';
part 'countdown_state.dart';
part 'countdown_bloc.freezed.dart';

class CountdownBloc extends Bloc<CountdownEvent, CountdownState> {
  CountdownBloc() : super(const CountdownState.initial()) {
    _tickerSubscription?.cancel();
    _tickerSubscription = Stream.periodic(
      const Duration(seconds: kDuration),
      (x) => kDuration - x - 1,
    )
        .take(kDuration)
        .listen((duration) => add(CountdownEvent.ticked(duration)));
    on<CountdownEvent>(
      (event, emit) => event.when(
        ticked: (secs) => emit(
          secs > 0
              ? CountdownState.countdownInProgress(secs)
              : const CountdownState.countdownComplete(),
        ),
        timeout: (onTimeOut) => onTimeOut(),
      ),
    );
  }

  static const int kDuration = 60;

  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
