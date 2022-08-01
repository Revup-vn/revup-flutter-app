import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../order-sevice/bloc/order_service_bloc.dart';
import 'service_invoice_view.u.dart';

class ServiceInvoicePage extends StatelessWidget {
  const ServiceInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrderServiceBloc()..add(const OrderServiceEvent.started()),
      child: const ServiceInvoiceView(),
    );
  }
}
