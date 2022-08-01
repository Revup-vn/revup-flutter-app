import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/service_model.dart';

part 'order_service_bloc.freezed.dart';
part 'order_service_event.dart';
part 'order_service_state.dart';

class OrderServiceBloc extends Bloc<OrderServiceEvent, OrderServiceState> {
  OrderServiceBloc() : super(const _Initial()) {
    on<OrderServiceEvent>(_onEvent);
  }

  int totalPrice = 0;

  Future<void> _onEvent(
    OrderServiceEvent event,
    Emitter<OrderServiceState> emit,
  ) async {
    await event.when(
      started: () async {
        emit(const OrderServiceState.loading());
        final services = [
          const ServiceModel(
            name: 'Thay săm',
            price: 170000,
          ),
          const ServiceModel(
            name: 'Thay săm',
            price: 170000,
          ),
          const ServiceModel(
            name: 'Thay săm',
            price: 170000,
          ),
          const ServiceModel(
            name: 'Thay lốp',
            price: 350000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
          const ServiceModel(
            name: 'Thay phanh',
            price: 250000,
          ),
        ];
        for (var i = 0; i < services.length; i++) {
          totalPrice += services.elementAt(i).price;
        }
        emit(
          OrderServiceState.success(services, totalPrice),
        );
      },
    );
  }
}
