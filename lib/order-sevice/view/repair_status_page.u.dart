import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/order_service_bloc.dart';
import 'repair_status_view.u.dart';

class RepairStatusPage extends StatelessWidget {
  const RepairStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          OrderServiceBloc('')..add(const OrderServiceEvent.started()),
      child: const RepairStatusView(),
    );
  }
}
