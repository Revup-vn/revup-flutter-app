import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_service_event.dart';
part 'add_service_state.dart';
part 'add_service_bloc.freezed.dart';

class AddServiceBloc extends Bloc<AddServiceEvent, AddServiceState> {
  AddServiceBloc() : super(_Initial()) {
    on<AddServiceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
