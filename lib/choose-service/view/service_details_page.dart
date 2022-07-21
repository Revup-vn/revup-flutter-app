import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../l10n/l10n.dart';
import '../models/service_data.dart';
import '../widgets/service_list_tile.dart';

class ServiceDetailsPage extends StatelessWidget {
  const ServiceDetailsPage({super.key, required this.serviceData});
  final ServiceData serviceData;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.serviceDetailsAppBarTitle),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(l10n.serviceInforLabel),
              ServiceListTile(
                title: serviceData.name ?? '',
                subtitle: serviceData.productPriceRange ?? '',
                imageUrl: serviceData.imageUrl ?? '',
              ),
              AutoSizeText(l10n.productListLabel),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: serviceData.products?.length,
                itemBuilder: (context, index) {
                  return ServiceListTile(
                    title: serviceData.products![index].name ?? '',
                    subtitle: serviceData.products![index].price.toString(),
                    imageUrl:
                        serviceData.products![index].productImageUrl ?? '',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
