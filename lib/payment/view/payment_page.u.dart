import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../shared/utils.dart';
import '../bloc/payment_page_bloc.dart';
import 'payment_view.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = getUser(context.read<AuthenticateBloc>().state)
        .getOrElse(
          () => throw NullThrownError(),
        )
        .uuid;
    return BlocProvider(
      create: (context) =>
          PaymentPageBloc(context.read(), context.read(), userId),
      child: const PaymentView(),
    );
  }
}
