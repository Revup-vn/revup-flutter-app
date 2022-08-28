import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/repair_status_bloc.dart';
import 'repair_status_view.u.dart';

class RepairStatusPage extends StatelessWidget {
  const RepairStatusPage(this.recordId, {super.key});
  final String recordId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RepairStatusBloc(
        recordId,
        context.read(),
        context.read(),
      ),
      child: const RepairStatusView(),
    );
  }
}
