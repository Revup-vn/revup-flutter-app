import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';
import '../bloc/choose_product_bloc.dart';
import 'choose_product_view.u.dart';

class ChooseProductPage extends StatelessWidget {
  const ChooseProductPage({
    super.key,
    required this.serviceData,
    required this.catAndSv,
    required this.providerId,
    required this.recordId,
  });
  final String providerId;
  final ServiceData serviceData;
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;
  final String recordId;
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
        catAndSv,
      ),
      child: ChooseProductView(
        recordId: recordId,
      ),
    );
  }
}
