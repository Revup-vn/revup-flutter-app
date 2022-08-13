import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../bloc/history_bloc.dart';
import 'history_view.u.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key, required this.user});
  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HistoryBloc(
        context.read(),
        context.read(),
        context.read(),
        user,
      ),
      child: const HistoryView(),
    );
  }
}
