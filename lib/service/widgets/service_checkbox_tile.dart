import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../repairer_profile/models/service_data.u.dart';
import '../../router/router.dart';

class ServiceCheckboxTile extends StatefulWidget {
  const ServiceCheckboxTile({
    super.key,
    required this.serviceData,
    this.onTap,
    required this.selectProMode,
    required this.index,
    required this.providerId,
    required this.catAndSv,
    required this.field,
    required this.canSelect,
    required this.isSelectDefault,
  });
  final ServiceData serviceData;
  final VoidCallback? onTap;
  final bool selectProMode;
  final bool canSelect;
  final bool isSelectDefault;
  final int index;
  final String providerId;
  final Tuple2<RepairCategory, IList<ServiceData>> catAndSv;
  final FormFieldState<List<ServiceData>> field;

  @override
  State<ServiceCheckboxTile> createState() => _ServiceCheckboxTileState();
}

class _ServiceCheckboxTileState extends State<ServiceCheckboxTile> {
  bool? isChecked;
  @override
  void initState() {
    super.initState();
    isChecked = widget.isSelectDefault;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Card(
      elevation: 0,
      child: Column(
        children: [
          ListTile(
            onTap: widget.onTap,
            leading: SizedBox(
              height: 48,
              width: 48,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(48),
                child: CachedNetworkImage(
                  imageUrl: widget.serviceData.imageURL,
                  placeholder: (context, url) => Assets.screens.dfAvatar.image(
                    fit: BoxFit.cover,
                    height: 64,
                    gaplessPlayback: true,
                    width: 64,
                  ),
                  errorWidget: (context, url, dynamic error) {
                    return Assets.screens.dfAvatar.image(
                      fit: BoxFit.cover,
                      height: 64,
                      gaplessPlayback: true,
                      width: 64,
                    );
                  },
                  height: 64,
                  width: 64,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            title: AutoSizeText(widget.serviceData.name),
            subtitle: AutoSizeText(
              '${l10n.servicePriceLabel}: '
              '''${widget.serviceData.serviceFee == -1 ? l10n.needQuotePriceLabel : context.formatMoney(widget.serviceData.serviceFee)}''',
            ),
            trailing: Checkbox(
              checkColor: Theme.of(context).colorScheme.onPrimary,
              activeColor: Theme.of(context).colorScheme.primary,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });

                if (value ?? false) {
                  (widget.field.value)?.add(widget.serviceData);
                } else {
                  widget.field.value?.remove(widget.serviceData);
                }

                // context.read<ChooseServiceBloc>().add(
                //       ChooseServiceEvent.serviceSelectChanged(
                //         serviceData: widget.serviceData,
                //         index: widget.index,
                //       ),
                //     );
              },
            ),
          ),
          if (widget.selectProMode && widget.canSelect && (isChecked ?? false))
            TextButton(
              onPressed: () {
                context.router.push(
                  ChooseProductRoute(
                    serviceData: widget.serviceData,
                    catAndSv: widget.catAndSv,
                    providerId: widget.providerId,
                  ),
                );
                // showMaterialModalBottomSheet<Widget>(
                //     context: context,
                //     builder: (context) => ChooseServiceView());
              },
              child: AutoSizeText(maxLines: 1, l10n.selectProductLabel),
            ),
        ],
      ),
    );
  }
}
