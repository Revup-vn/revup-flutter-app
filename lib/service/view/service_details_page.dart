import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(l10n.serviceInforLabel),
              ServiceListTile(
                title: serviceData.name ?? '',
                subtitle: serviceData.productPriceRange ?? '',
                imageUrl: serviceData.imageUrl ?? '',
                imageSize: 48,
              ),
              AutoSizeText(l10n.productListLabel),
              ListView.builder(
                shrinkWrap: true,
                itemCount: serviceData.products?.length,
                itemBuilder: (context, index) {
                  return ServiceListTile(
                    title: serviceData.products![index].name ?? '',
                    subtitle: serviceData.products![index].price.toString(),
                    imageUrl:
                        serviceData.products![index].productImageUrl ?? '',
                    imageSize: 32,
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
