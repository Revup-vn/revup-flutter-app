import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/loading.u.dart';
import '../bloc/order_service_bloc.u.dart';
import '../widgets/order_detail_content.u.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderServiceBloc, OrderServiceState>(
      builder: (context, state) => state.when(
        initial: Container.new,
        loading: Loading.new,
        failure: Loading.new,
        loadDataSuccess: (services, totalPrice, ready) => OrderDetailContent(
          ready: ready,
          services,
          totalPrice,
        ),
      ),
    );
  }
}
