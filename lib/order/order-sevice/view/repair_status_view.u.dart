import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../l10n/l10n.dart';
import '../../../shared/widgets/loading.u.dart';
import '../bloc/bloc/repair_status_bloc.dart';

class RepairStatusView extends StatefulWidget {
  const RepairStatusView({super.key});

  @override
  State<RepairStatusView> createState() => _RepairStatusViewState();
}

class _RepairStatusViewState extends State<RepairStatusView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    child: Row(
                      children: <Widget>[
                        AutoSizeText(
                          l10n.workerRepairLabel,
                          style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold) ??
                              const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AutoSizeText(
                          l10n.serviceRequestLabel,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_box_outlined),
                          onPressed: () {
                            // TODO(cantgim): push orderdetail page
                          },
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<RepairStatusBloc, RepairStatusState>(
                    builder: (context, state) => state.when(
                      initial: Loading.new,
                      loading: Loading.new,
                      failure: () => AutoSizeText(l10n.emptyLabel),
                      success: (service, total) => ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: service.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                AutoSizeText(
                                  service[index].value1,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                AutoSizeText(
                                  context.formatMoney(service[index].value2),
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Theme.of(context).cardColor),
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: DecoratedBox(
                      decoration:
                          BoxDecoration(color: Theme.of(context).cardColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AutoSizeText(
                            l10n.total,
                            style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(fontWeight: FontWeight.bold) ??
                                const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          BlocBuilder<RepairStatusBloc, RepairStatusState>(
                            builder: (context, state) {
                              return AutoSizeText(
                                context.formatMoney(
                                  state.maybeWhen(
                                    orElse: () => 0,
                                    success: (service, total) => total,
                                  ),
                                ),
                                style: Theme.of(context).textTheme.labelLarge,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Theme.of(context).cardColor),
                  child: ElevatedButton(
                    onPressed: null,
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: AutoSizeText(
                      l10n.updateLabel,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
