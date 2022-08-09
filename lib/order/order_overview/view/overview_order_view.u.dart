import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/overview_order_bloc.u.dart';
import '../widgets/loading_overview.u.dart';
import '../widgets/overview_order_content.u.dart';

class OverViewOrderView extends StatelessWidget {
  const OverViewOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<OverviewOrderBloc>().state.maybeWhen(
          initial: () {
            return context.read<OverviewOrderBloc>().add(
                  const OverviewOrderEvent.started(),
                );
          },
          orElse: () => false,
        );

    return BlocBuilder<OverviewOrderBloc, OverviewOrderState>(
      builder: (context, state) => state.when(
        initial: Container.new,
        failure: Container.new,
        loading: LoadingOverView.new,
        loadDataSuccess: (data, serviceCount) => OverviewOrderContent(
          modelData: data,
          serviceCount: serviceCount,
        ),
      ),
    );
  }
}
