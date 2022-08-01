import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/overview_bloc.dart';
import '../bloc/overview_order_bloc.dart';
import 'overview_order_view.u.dart';

class OverViewOrderPage extends StatelessWidget {
  const OverViewOrderPage({
    super.key,
  });
  final String providerID = '1';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OverviewOrderBloc>(
          create: (BuildContext context) => OverviewOrderBloc(providerID),
        ),
        BlocProvider<OverviewBloc>(
          create: (BuildContext context) => OverviewBloc(),
        ),
      ],
      child: const Scaffold(
        body: OverViewOrderView(),
      ),
    );
  }
}
