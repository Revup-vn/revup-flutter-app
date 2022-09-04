import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../repairer_profile/models/service_data.u.dart';
import '../bloc/service_details_bloc.u.dart';
import 'service_detail_view.u.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({
    super.key,
    required this.providerId,
    required this.serviceData,
  });
  final ServiceData serviceData;
  final String providerId;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();

    return BlocProvider(
      create: (context) => ServiceDetailsBloc(
        serviceData,
        context.read(),
        sr,
        providerId,
      ),
      child: ServiceDetailView(
        serviceData: serviceData,
      ),
    );
  }
}
