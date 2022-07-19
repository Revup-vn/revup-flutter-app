import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../new-service/bloc/new_service_bloc.dart';
import '../models/product_data.dart';
import '../models/service_data.dart';

part 'choose_service_event.dart';
part 'choose_service_state.dart';
part 'choose_service_bloc.freezed.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc() : super(const _Initial()) {
    on<Started>(_onStarted);

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
      },
    );

    on<NewServiceRequested>(
      (event, emit) {},
    );
  }

  Future<void> _onStarted(
    Started event,
    Emitter<ChooseServiceState> emit,
  ) async {
    emit(const ChooseServiceState.loading());
    final services = [
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
    ];
    emit(ChooseServiceState.success(services));
  }

  final selectedServices = ilist(<String>[]);
}
