import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/product_data.dart';
import '../../models/service_data.dart';

part 'choose_service_bloc.u.freezed.dart';
part 'choose_service_event.dart';
part 'choose_service_state.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc() : super(const _Initial()) {
    on<Started>(_onStarted);

    on<ServiceSelected>((event, emit) {
      services.map((e) {
        if (e.id == event.serviceData.id) {
          e.copyWith(isSelected: true);
        }
      });
    });

    on<ServiceUnselected>(
      (event, emit) {
        services.map((e) {
          if (e.id == event.serviceData.id) {
            e.copyWith(isSelected: false);
          }
        });
      },
    );

    on<ServiceListSubmitted>(
      (event, emit) {
        emit(const ChooseServiceState.loading());
      },
    );

    on<NewServiceRequested>(_onNewServiceRequested);
  }

  Future<void> _onNewServiceRequested(
    NewServiceRequested event,
    Emitter<ChooseServiceState> emit,
  ) async {
    emit(const ChooseServiceState.loading());
    emit(ChooseServiceState.success(services.appendElement(event.serviceData)));
  }

  Future<void> _onStarted(
    Started event,
    Emitter<ChooseServiceState> emit,
  ) async {
    emit(const ChooseServiceState.loading());
    emit(ChooseServiceState.success(services));
  }

  final services = ilist(<ServiceData>[
    const ServiceData(
      id: '1',
      name: 'Cat Service',
      imageUrl:
          'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      products: [
        ProductData(
          id: 'id',
          name: 'Cat Product',
          productImageUrl:
              'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
          price: 100000,
        ),
        ProductData(
          id: 'id',
          name: 'Cat Product',
          productImageUrl:
              'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
          price: 100000,
        ),
        ProductData(
          id: 'id',
          name: 'Cat Product',
          productImageUrl:
              'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
          price: 100000,
        ),
      ],
    ),
  ]);
}
