import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../bloc/overview_order_bloc.u.dart';
import 'overview_order_view.u.dart';

class OverViewOrderPage extends StatelessWidget {
  const OverViewOrderPage({
    super.key,
    required this.providerId,
    required this.recordId,
  });
  final String providerId;
  final String recordId;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<OverviewOrderBloc>(
          create: (BuildContext context) => OverviewOrderBloc(
            providerId,
            context.read(),
            sr,
            context.read(),
            recordId,
          ),
        ),
      ],
      child: const OverViewOrderView(),
    );
  }
}
