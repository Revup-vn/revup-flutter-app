import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../l10n/l10n.dart';
import '../model/history_model.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.historyModel});

  final HistoryModel historyModel;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final services = historyModel.services.toList();

    return SizedBox(
      height: 235,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                  child: Icon(
                    const IconData(
                      0xee4b,
                      fontFamily: 'MaterialIcons',
                    ),
                    size: 30,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 5),
                ),
                AutoSizeText(
                  l10n.orderDetailLabel,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ) ??
                      const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            AutoSizeText(
              '${l10n.addressLabel}: ${historyModel.toLocation}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: 6,
            ),
            AutoSizeText(
              '${l10n.vehicleTypeLabel}${historyModel.vehicleType}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: 6,
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            const SizedBox(
              height: 6,
            ),
            if (historyModel.isComplete)
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: services.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    AutoSizeText(services[index].serviceName),
                    AutoSizeText(
                      services[index].map(
                        pending: (v) => '',
                        paid: (v) => v.moneyAmount.toString(),
                        needToVerify: (v) => '',
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
