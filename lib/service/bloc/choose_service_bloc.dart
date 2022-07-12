import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_service_event.dart';
part 'choose_service_state.dart';
part 'choose_service_bloc.freezed.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc() : super(const _Initial()) {
    on<ServiceSelected>((event, emit) {
      selectedServices.add(event.serviceId);
    });
    on<ServiceUnselected>(
      (event, emit) {
        selectedServices.remove(event.serviceId);
      },
    );
    on<ServiceListSubmitted>(
      (event, emit) {
        emit(const ChooseServiceState.loading());
        // TODO(cantgim): call repository
      },
    );
  }
  List<String> selectedServices = <String>[];
}
