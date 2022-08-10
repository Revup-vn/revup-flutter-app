import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../bloc/order_service_bloc.u.dart';
import 'order_detail_view.u.dart';

class OrderDetailPage extends StatelessWidget {
  OrderDetailPage({super.key});
  final pid = '';
  final cid = '';
  final IList<PaymentService> data = ilist([]);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrderServiceBloc(
        pid,
        cid,
        data,
        context.read(),
        context.read(),
      ),
      child: const OrderDetailView(),
    );
  }
}
