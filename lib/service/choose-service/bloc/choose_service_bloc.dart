import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/product_data.dart';
import '../../models/service_data.dart';

part 'choose_service_bloc.freezed.dart';
part 'choose_service_event.dart';
part 'choose_service_state.dart';

class ChooseServiceBloc extends Bloc<ChooseServiceEvent, ChooseServiceState> {
  ChooseServiceBloc() : super(const _Initial()) {
    on<ChooseServiceEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    ChooseServiceEvent event,
    Emitter<ChooseServiceState> emit,
  ) async {
    event.when(
      started: () {
        emit(const ChooseServiceState.loading());
        emit(ChooseServiceState.success(services));
      },
      serviceListSubmitted: () {
        emit(const ChooseServiceState.loading());
      },
      newServiceRequested: (serviceData) {
        emit(const ChooseServiceState.loading());
        emit(
          ChooseServiceState.success(
            services.appendElement(serviceData),
          ),
        );
      },
      serviceSelectChanged: (serviceData, isSelected) {
        services.map((e) {
          if (e.id == serviceData.id) {
            e.copyWith(isSelected: isSelected);
          }
        });
      },
      detailRequestAccepted: (String recordId) {
        const serSelected = ServiceData(
          id: '4',
          name: 'Cat Service',
          isSelected: true,
          imageUrl:
              'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
          products: [
            ProductData(
              id: '2',
              name: 'Cat Product',
              productImageUrl:
                  'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
              price: 100000,
            ),
          ],
        );
        emit(
          ChooseServiceState.orderModify(
            services.appendElement(serSelected),
          ),
        );
      },
    );
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
      ],
    ),
  ]);
}
