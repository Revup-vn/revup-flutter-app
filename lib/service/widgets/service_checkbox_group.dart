import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:revup_core/core.dart';

import '../../order/models/pending_service_model.dart';
import '../../repairer_profile/models/service_data.u.dart';
import '../../router/router.dart';
import 'service_checkbox_tile.dart';

class ServiceCheckboxGroup extends StatelessWidget {
  const ServiceCheckboxGroup({
    super.key,
    required this.serviceList,
    required this.pendingService,
    required this.catAndSv,
    required this.providerId,
    required this.isSelectProduct,
    required this.recordId,
  });
  final List<ServiceData> serviceList;
  final List<PendingServiceModel> pendingService;
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;
  final String providerId;
  final bool isSelectProduct;
  final String recordId;

  @override
  Widget build(BuildContext context) {
    final lst = <ServiceData>[];
    final svDataOptional = pendingService
        .map(
          ServiceData.fromPendingService,
        )
        .toList();
    return FormBuilderField<List<ServiceData>>(
      initialValue: svDataOptional,
      name: 'data',
      builder: (field) => ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: serviceList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ServiceCheckboxTile(
            onTap: () => context.router.push(
              ServiceDetailRoute(
                serviceData: serviceList[index],
                catAndSv: catAndSv,
                providerId: providerId,
              ),
            ),
            serviceData: serviceList[index],
            selectProMode: isSelectProduct,
            isSelectDefault: pendingService
                    .map((e) => e.name)
                    .contains(serviceList[index].name) ||
                serviceList[index].isOptional,
            canSelect: !serviceList[index].isOptional &&
                serviceList[index].products.isEmpty,
            index: index,
            providerId: providerId,
            catAndSv: catAndSv,
            field: field,
            recordId: recordId,
          );
        },
      ),
    );
  }
}
