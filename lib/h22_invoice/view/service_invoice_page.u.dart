import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/invoice_bloc.u.dart';
import 'service_invoice_view.u.dart';

class ServiceInvoicePage extends StatelessWidget {
  const ServiceInvoicePage(this.providerID, this.id, {super.key});
  final String providerID;
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InvoiceBloc(
        context.read(),
        context.read(),
        providerID,
        context.read(),
        id,
      ),
      child: const ServiceInvoiceView(),
    );
  }
}
