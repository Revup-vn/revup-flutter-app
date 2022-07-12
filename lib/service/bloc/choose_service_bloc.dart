import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_service_event.dart';
part 'choose_service_state.dart';
part 'choose_service_bloc.freezed.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc() : super(const _Initial()) {
    on<ServiceSelected>((event, emit) {
      selectedServices.appendElement(event.serviceId);
    });
    on<ServiceUnselected>(
      (event, emit) {
        selectedServices.filter((a) => a != event.serviceId);
      },
    );
    on<ServiceListSubmitted>(
      (event, emit) {
        emit(const ChooseServiceState.loading());
        // TODO(cantgim): call repository
      },
    );
  }
  final selectedServices = ilist(<String>[]);
}
