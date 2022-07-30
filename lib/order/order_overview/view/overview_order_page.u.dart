import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/overview_order_bloc.dart';
import 'overview_order_view.u.dart';

class OverViewOrderPage extends StatelessWidget {
  const OverViewOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OverviewOrderBloc>(
      create: (BuildContext context) => OverviewOrderBloc(),
      child: const OverViewOrderView(),
    );
  }
}
