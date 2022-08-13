import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../model/history_model.dart';

class OrderDetailStatus extends StatelessWidget {
  const OrderDetailStatus({
    super.key,
    required this.historyModel,
  });
  final HistoryModel historyModel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      height: 170,
      color: Theme.of(context).colorScheme.onInverseSurface,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AutoSizeText(
                    historyModel.isComplete
                        ? l10n.completedOrderLabel
                        : l10n.canceledLabel,
                    style: TextStyle(
                      color: historyModel.isComplete
                          ? Theme.of(context).colorScheme.tertiary
                          : Theme.of(context).colorScheme.error,
                    ),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 1,
                  width: 20,
                ),
                if (historyModel.isComplete)
                  const Icon(Icons.fact_check_rounded)
                else
                  const Icon(Icons.free_cancellation_rounded),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AutoSizeText(
                    l10n.timeBookingLabel,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ) ??
                        TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                  width: 20,
                ),
                Expanded(
                  child: AutoSizeText(
                    textAlign: TextAlign.end,
                    context.formatDate(historyModel.completedTime),
                    softWrap: true,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ) ??
                        TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
