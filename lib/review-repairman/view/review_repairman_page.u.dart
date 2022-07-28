import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/review_repairman_bloc.dart';
import 'review_repairman_view.u.dart';

class ReviewRepairmanPage extends StatelessWidget {
  const ReviewRepairmanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ReviewRepairmanBloc()..add(const ReviewRepairmanEvent.started()),
      child: const ReviewRepairmanView(),
    );
  }
}
