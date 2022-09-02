import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../l10n/l10n.dart';
import '../../../router/router.dart';
import '../models/history_detail_model.dart';
import '../widgets/order_details.u.dart';
import '../widgets/order_feedback.u.dart';
import '../widgets/order_service_information.u.dart';
import '../widgets/order_status.u.dart';

class HistoryProviderDetailView extends StatelessWidget {
  const HistoryProviderDetailView({
    super.key,
    required this.data,
    required this.rid,
  });
  final HistoryDetailModel data;
  final String rid;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.orderInformationLabel,
          style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold) ??
              const TextStyle(
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
            onPressed: () {
              context.router.push(
                AddReportRoute(reportID: rid),
              );
            },
            child: Text(context.l10n.reportLabel),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  if (data.isComplete) ...[
                    OrderStatusItem(
                      isComplete: data.isComplete,
                      orderNumber: data.orderNumber,
                      orderStatusNotification: l10n.completedOrderLabel,
                      textStyleNotification: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ) ??
                          TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                      iconOrder: Icon(
                        Icons.inventory_outlined,
                        size: 30,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      serviceStartBooking: data.serviceStartBooking,
                      serviceEndBooking: data.serviceEndBooking,
                    ),
                  ] else ...[
                    OrderStatusItem(
                      isComplete: data.isComplete,
                      orderNumber: data.orderNumber,
                      orderStatusNotification: l10n.cancelOrderLabel,
                      textStyleNotification:
                          Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ) ??
                              TextStyle(
                                color: Theme.of(context).colorScheme.error,
                              ),
                      iconOrder: Icon(
                        Icons.inventory_outlined,
                        size: 30,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      serviceStartBooking: data.serviceStartBooking,
                      serviceEndBooking: data.serviceEndBooking,
                    ),
                  ],
                  const Divider(
                    height: 1,
                    thickness: 10,
                  ),
                  OrderDetailsItem(
                    data: data.orderDetailModel,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 10,
                  ),
                  OrderServiceInformationItem(user: data.provider),
                  const Divider(
                    height: 1,
                    thickness: 10,
                  ),
                  if (data.isComplete)
                    OrderFeedbackItem(
                      rating: data.rating,
                      feedback: data.feedback,
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 80,
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: ElevatedButton(
                onPressed: () {
                  // TODO(namngoc231): Contact repair service
                  // TODO(tcmhoang): what is actually need to do here?
                },
                style: Theme.of(context).elevatedButtonTheme.style,
                child: AutoSizeText(
                  l10n.contactRepairServiceLabel,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
