import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../../../repairer_profile/models/service_data.u.dart';
import '../../../shared/fallbacks.dart';
import '../../widgets/service_list_tile.dart';
import '../bloc/service_details_bloc.u.dart';

class ServiceDetailView extends StatelessWidget {
  const ServiceDetailView({super.key, required this.serviceData});

  final ServiceData serviceData;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.watch<ServiceDetailsBloc>();
    bloc.state.whenOrNull(
      initial: () => bloc.add(
        const ServiceDetailsEvent.started(),
      ),
    );

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
                title: serviceData.name,
                subtitle:
                    '''${l10n.serviceFeeLabel}: ${serviceData.serviceFee.toString()}''',
                imageUrl: serviceData.imageURL.isEmpty
                    ? kFallbackServiceImg
                    : serviceData.imageURL,
              ),
              AutoSizeText(l10n.productListLabel),
              bloc.state.when(
                initial: Container.new,
                loaded: (products) {
                  final pList = products.toList();

                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pList.length,
                    itemBuilder: (context, index) {
                      return ServiceListTile(
                        title: pList[index].name,
                        subtitle:
                            '${l10n.productPriceLabel}: ${pList[index].price}đ',
                        imageUrl: pList[index].img.isEmpty
                            ? kFallbackProductImg
                            : pList[index].img,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      height: 8,
                    ),
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
