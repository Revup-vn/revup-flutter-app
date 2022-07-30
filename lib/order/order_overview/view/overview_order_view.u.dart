import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/overview_order_bloc.dart';
import '../widgets/overview_order_content.u.dart';

class OverViewOrderView extends StatelessWidget {
  const OverViewOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewOrderBloc, OverviewOrderState>(
      builder: (context, state) => state.maybeWhen(
        ready: (totalFeeService, ready) =>
            OverviewOrderContent(totalFeeService: totalFeeService),
        orElse: () => const OverviewOrderContent(),
      ),
    );
  }
}
