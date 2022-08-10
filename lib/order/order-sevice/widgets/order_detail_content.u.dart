import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import '../model/service_model.dart';

class OrderDetailContent extends StatelessWidget {
  const OrderDetailContent(
    this.currentListService,
    this.total, {
    required this.ready,
    super.key,
  });
  final IList<ServiceModel> currentListService;
  final int total;
  final bool ready;
  @override
  Widget build(BuildContext context) {
    final data = currentListService.toList();
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            onPressed: ready
                ? () {
                    showDialog<void>(
                      context: context,
                      builder: (context) => Dialog(
                        child: SizedBox(
                          height: 150,
                          width: 150,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 10,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        context.l10n.cancelUpdateServiceLabel,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 1,
                                bottom: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        var count = 0;
                                        context.router.popUntil(
                                          (route) => count++ >= 2,
                                        );
                                      },
                                      child: AutoSizeText(
                                        context.l10n.confirmLabel,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context.router.pop();
                                      },
                                      child: AutoSizeText(
                                        context.l10n.cancelLabel,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                : () => context.router.pop(),
            child: Text(l10n.cancelLabel),
          ),
        ],
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
                          l10n.serviceDetailLabel,
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
                            // TODO(cantgim): route sang chon dich vu
                            // add event add new service
                          },
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AutoSizeText(
                              data[index].name,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            AutoSizeText(
                              '${data[index].price}000đ',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
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
                          AutoSizeText(
                            '$totalđ',
                            style: Theme.of(context).textTheme.labelLarge,
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
                    onPressed: ready
                        ? () {
                            // TODO(cantgim): them event submit vao day.
                          }
                        : null,
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
