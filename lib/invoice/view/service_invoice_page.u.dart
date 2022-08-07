import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/invoice_bloc.dart';
import 'service_invoice_view.u.dart';

class ServiceInvoicePage extends StatelessWidget {
  const ServiceInvoicePage(this.providerID, {super.key});
  final String providerID;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InvoiceBloc(
        context.read(),
        context.read(),
        providerID,
        context.read(),
      ),
      child: const ServiceInvoiceView(),
    );
  }
}
