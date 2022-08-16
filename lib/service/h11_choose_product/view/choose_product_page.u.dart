import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';
import '../bloc/choose_product_bloc.dart';
import 'choose_product_view.u.dart';

class ChooseProductPage extends StatelessWidget {
  const ChooseProductPage({
    super.key,
    required this.serviceData,
    required this.categories,
    required this.providerId,
  });
  final String providerId;
  final ServiceData serviceData;
  final List<Tuple2<RepairCategory, IList<ServiceData>>> categories;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();

    return BlocProvider(
      create: (context) => ChooseProductBloc(
        providerId,
        context.read(),
        sr,
        context.read(),
        serviceData,
        categories,
      ),
      child: const ChooseProductView(),
    );
  }
}
