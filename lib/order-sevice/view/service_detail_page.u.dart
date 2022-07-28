import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/order_service_bloc.dart';
import 'service_detail_view.u.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrderServiceBloc()..add(const OrderServiceEvent.started()),
      child: const ServiceDetailView(),
    );
  }
}
