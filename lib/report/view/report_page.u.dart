import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/report_bloc.dart';
import 'report_view.u.dart';

class ReportPage extends StatelessWidget {
  const ReportPage(this.cid, {super.key});
  final String cid;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportBloc(cid, context.read(), context.read()),
      child: const ReportView(),
    );
  }
}
