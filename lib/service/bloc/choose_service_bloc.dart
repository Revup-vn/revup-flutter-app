import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/service_data.dart';

part 'choose_service_event.dart';
part 'choose_service_state.dart';
part 'choose_service_bloc.freezed.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc() : super(_Initial()) {
    on<ChooseServiceEvent>((event, emit) {});
  }
}
