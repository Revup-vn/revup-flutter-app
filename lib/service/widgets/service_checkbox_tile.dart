import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../gen/assets.gen.dart';
import '../choose-service/bloc/choose_service_bloc.u.dart';
import '../models/service_data.dart';

class ServiceCheckboxTile extends StatefulWidget {
  const ServiceCheckboxTile({
    super.key,
    required this.serviceData,
    this.onTap,
  });
  final ServiceData serviceData;
  final VoidCallback? onTap;

  @override
  State<ServiceCheckboxTile> createState() => _ServiceCheckboxTileState();
}

class _ServiceCheckboxTileState extends State<ServiceCheckboxTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: widget.onTap,
        leading: SizedBox(
          height: 48,
          width: 48,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(48),
            child: CachedNetworkImage(
              imageUrl: widget.serviceData.imageUrl ?? '',
              placeholder: (context, url) => Assets.screens.dfAvatar.image(
                fit: BoxFit.cover,
                height: 64,
                gaplessPlayback: true,
                width: 64,
              ),
              // ignore: implicit_dynamic_parameter
              errorWidget: (context, url, error) {
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
        title: AutoSizeText(widget.serviceData.name ?? ''),
        subtitle: const AutoSizeText('Đơn giá: '),
        trailing: Checkbox(
          checkColor: Theme.of(context).colorScheme.onPrimary,
          activeColor: Theme.of(context).colorScheme.primary,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
            isChecked
                ? context.read<ChooseServiceBloc>().add(
                      ChooseServiceEvent.serviceSelected(
                        widget.serviceData,
                      ),
                    )
                : context.read<ChooseServiceBloc>().add(
                      ChooseServiceEvent.serviceUnselected(
                        widget.serviceData,
                      ),
                    );
          },
        ),
      ),
    );
  }
}
