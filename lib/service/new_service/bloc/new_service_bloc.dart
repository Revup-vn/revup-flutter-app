import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_service_bloc.freezed.dart';
part 'new_service_event.dart';
part 'new_service_state.dart';

class NewServiceBloc extends Bloc<NewServiceEvent, NewServiceState> {
  NewServiceBloc() : super(const _Initial()) {
    on<NewServiceEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    NewServiceEvent event,
    Emitter<NewServiceState> emit,
  ) async {
    await event.when(
      started: () {
        emit(NewServiceState.success());
      },
      // submitted: (serviceData) {
      //   emit(const NewServiceState.loading());
      //   emit(NewServiceState.success(serviceData));
      // },
    );
  }
}
