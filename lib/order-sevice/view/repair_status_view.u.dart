import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../router/app_router.gr.dart';
import '../bloc/order_service_bloc.dart';

class RepairStatusView extends StatelessWidget {
  const RepairStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
      ),
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
                            // context.router.push(
                            //   const OrderDetailRoute(),
                            // );
                            // TODO(cantgim): push orderdetail page
                          },
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<OrderServiceBloc, OrderServiceState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const Text('Empty'),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        failure: () => const Text('Failed'),
                        success: (services, totalPrice) => ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: services.length,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  AutoSizeText(
                                    services.elementAt(index).name,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  AutoSizeText(
                                    '${services.elementAt(index).price}Đ',
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
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
                          BlocBuilder<OrderServiceBloc, OrderServiceState>(
                            builder: (context, state) {
                              return state.when(
                                initial: () => const Text('Empty'),
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                failure: () => const Text('Failed'),
                                success: (services, totalPrice) => AutoSizeText(
                                  '$totalPriceĐ',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
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
