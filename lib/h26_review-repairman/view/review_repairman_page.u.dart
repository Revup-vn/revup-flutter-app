import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../bloc/review_repairman_bloc.u.dart';
import 'review_repairman_view.u.dart';

class ReviewRepairmanPage extends StatelessWidget {
  const ReviewRepairmanPage(this.providerData, this.completer, {super.key});
  final ProviderData providerData;
  final Completer completer;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ReviewRepairmanBloc()..add(const ReviewRepairmanEvent.started()),
      child: ReviewRepairmanView(providerData, completer),
    );
  }
}
