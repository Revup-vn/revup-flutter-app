import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/history_bloc.u.dart';
import 'history_view.u.dart';

class HistoryProviderPage extends StatelessWidget {
  const HistoryProviderPage(
    this.cid, {
    super.key,
  });
  final String cid;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HistoryProviderBloc(
        cid,
        context.read(),
        context.read(),
      ),
      child: const HistoryProviderView(),
    );
  }
}
