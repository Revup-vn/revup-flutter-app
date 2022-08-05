import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../bloc/service_details_bloc.dart';
import 'service_detail_view.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({
    super.key,
    required this.serviceId,
    required this.providerId,
  });
  final String serviceId;
  final String providerId;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();

    return BlocProvider(
      create: (context) =>
          ServiceDetailsBloc(serviceId, context.read(), sr, providerId),
      child: const ServiceDetailView(),
    );
  }
}
