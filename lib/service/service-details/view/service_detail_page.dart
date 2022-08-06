import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';
import '../bloc/service_details_bloc.dart';
import 'service_detail_view.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({
    super.key,
    required this.providerId,
    required this.serviceData,
    required this.categories,
  });
  final ServiceData serviceData;
  final String providerId;
  final List<Tuple2<RepairCategory, IList<ServiceData>>> categories;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();

    return BlocProvider(
      create: (context) => ServiceDetailsBloc(
        serviceData,
        context.read(),
        sr,
        providerId,
        categories,
      ),
      child: ServiceDetailView(
        serviceData: serviceData,
      ),
    );
  }
}
