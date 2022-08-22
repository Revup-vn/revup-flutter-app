import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../h22_invoice/models/service_data.dart';
import '../../h2_find_provider/models/provider_data.u.dart';
import '../bloc/invoice_payment_bloc.u.dart';
import 'invoice_payment_view.u.dart';

class InvoicePaymentPage extends StatelessWidget {
  const InvoicePaymentPage(
    this.providerData,
    this.serviceData,
    this.total, {
    super.key,
  });
  final ProviderData providerData;
  final List<ServiceData> serviceData;
  final int total;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InvoicePaymentBloc(context.read()),
      child: InvoicePaymentView(providerData, serviceData, total),
    );
  }
}
