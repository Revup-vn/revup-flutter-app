import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../l10n/l10n.dart';
import '../../order/models/pending_service_model.dart';
import '../../router/router.dart';
import '../../service/choose_service/cubit/payment_cubit.dart';
import '../../shared/utils.dart';
import '../bloc/invoice_payment_bloc.u.dart';
import 'invoice_payment_view.u.dart';

class InvoicePaymentPage extends StatelessWidget {
  const InvoicePaymentPage({
    super.key,
    required this.providerData,
    required this.services,
    required this.recordId,
  });
  final ProviderData providerData;
  final List<PendingServiceModel> services;
  final String recordId;
  @override
  Widget build(BuildContext context) {
    final user = getUser(context.read<AuthenticateBloc>().state).getOrElse(
      () => throw NullThrownError(),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => InvoicePaymentBloc(
            context.read(),
            context.read(),
            recordId,
            user,
            context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => PaymentCubit(
            context.read(),
            context.read(),
            context.read(),
            context.read(),
            providerData.id,
          ),
        ),
      ],
      child: BlocListener<InvoicePaymentBloc, InvoicePaymentState>(
        listener: (context, state) => state.maybeMap(
          orElse: () => unit,
          paymentSuccess: (value) {
            showDialog<String>(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: Column(
                          children: [
                            Icon(
                              Icons.done,
                              color: Theme.of(context).colorScheme.onTertiary,
                            ),
                            AutoSizeText(
                              context.l10n.doneLabel,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );

            return Future.delayed(
              const Duration(seconds: 3),
              () async {
                context.router.popUntil(
                  (route) => route.settings.name == HomeRoute.name,
                );
              },
            );
          },
        ),
        child: InvoicePaymentView(
          providerData: providerData,
          services: services,
          recordId: recordId,
        ),
      ),
    );
  }
}
