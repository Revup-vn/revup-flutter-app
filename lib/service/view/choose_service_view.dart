import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../widgets/cubit/service_list_tile_cubit.dart';
import 'choose_service_list.dart';

class ChooseServiceView extends StatefulWidget {
  const ChooseServiceView({super.key});
  @override
  State<ChooseServiceView> createState() => _ChooseServiceViewState();
}

class _ChooseServiceViewState extends State<ChooseServiceView> {
  List<String>? selectedServices = <String>[];

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(l10n.addServiceAppBarTitle),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocListener<ServiceListTileCubit, ServiceListTileState>(
        listener: (context, state) => state.when(
          initial: () {},
          checked: (serviceId) {
            selectedServices!.add(serviceId);
          },
          unchecked: (serviceId) {
            selectedServices!.remove(serviceId);
          },
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ChooseServiceList(),
              ElevatedButton(
                onPressed: () {
                  //context.read<ChooseServiceBloc>().add(ChooseServiceEvent.serviceListSubmitted(serviceData: ));
                }, // TODO(cantgim): confirm event
                style: Theme.of(context).elevatedButtonTheme.style,
                child: AutoSizeText(l10n.confirmLabel),
              )
            ],
          ),
        ),
      ),
    );
  }
}
