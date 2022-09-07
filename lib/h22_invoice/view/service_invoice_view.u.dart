import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/widgets/loading.u.dart';
import '../bloc/invoice_bloc.u.dart';
import '../widgets/service_main_content.u.dart';

class ServiceInvoiceView extends StatelessWidget {
  const ServiceInvoiceView({super.key, required this.recordId});
  final String recordId;
  @override
  Widget build(BuildContext context) {
    context.watch<InvoiceBloc>().state.maybeWhen(
          initial: (hasValue) {
            return context
                .read<InvoiceBloc>()
                .add(const InvoiceEvent.started());
          },
          orElse: () => false,
        );

    return BlocBuilder<InvoiceBloc, InvoiceState>(
      builder: (context, state) => state.when(
        failure: Container.new,
        initial: (_) => Container(),
        loading: Loading.new,
        loadingDataSuccess: (data, ready, services) => ServiceInvoiceContent(
          data,
          services,
          ready: ready,
          recordId: recordId,
        ),
      ),
    );
  }
}
