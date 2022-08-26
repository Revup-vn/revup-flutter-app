import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/review_repairman_bloc.u.dart';
import 'review_repairman_builder.u.dart';

class ReviewRepairmanPage extends StatelessWidget {
  const ReviewRepairmanPage(this.providerId, this.repairId, {super.key});
  final String providerId;
  final String repairId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ReviewRepairmanBloc(
        providerId,
        repairId,
        context.read(),
        context.read(),
      )..add(const ReviewRepairmanEvent.started()),
      child: const ReviewRepairmanBuilder(),
    );
  }
}
