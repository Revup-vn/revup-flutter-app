import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../order/models/pending_service_model.dart';
import '../../repairer_profile/models/service_data.u.dart';
import '../../router/router.dart';
import 'service_checkbox_tile.dart';

class ServiceCheckboxGroup extends StatelessWidget {
  const ServiceCheckboxGroup({
    super.key,
    required this.serviceList,
    required this.pendingService,
    required this.providerId,
    required this.isSelectProduct,
    required this.recordId,
  });
  final List<ServiceData> serviceList;
  final List<PendingServiceModel> pendingService;
  final String providerId;
  final bool isSelectProduct;
  final String recordId;

  @override
  Widget build(BuildContext context) {
    final svDataOptional = pendingService
        .map(
          ServiceData.fromPendingService,
        )
        .toList()
      ..addAll(
        serviceList
            .where(
              (element) => element.isOptional,
            )
            .toList(),
      );
    return FormBuilderField<List<ServiceData>>(
      initialValue: svDataOptional,
      name: 'data',
      builder: (field) => Expanded(
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 50),
          physics: const BouncingScrollPhysics(),
          itemCount: serviceList.length,
          itemBuilder: (context, index) {
            return ServiceCheckboxTile(
              onTap: () => context.router.push(
                ServiceDetailRoute(
                  serviceData: serviceList[index],
                  providerId: providerId,
                ),
              ),
              serviceData: serviceList[index],
              selectProMode: isSelectProduct,
              isSelectDefault: pendingService
                      .map((e) => e.name)
                      .contains(serviceList[index].name) ||
                  serviceList[index].isOptional,
              canSelect: !serviceList[index].isOptional,
              index: index,
              providerId: providerId,
              field: field,
              recordId: recordId,
            );
          },
        ),
      ),
    );
  }
}
