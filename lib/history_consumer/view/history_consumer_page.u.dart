import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/history_consumer_bloc.dart';
import 'history_consumer_view.u.dart';

class HistoryConsumerPage extends StatelessWidget {
  const HistoryConsumerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HistoryConsumerBloc()
        ..add(
          const HistoryConsumerEvent.started(),
        ),
      child: const HistoryConsumerView(),
    );
  }
}
