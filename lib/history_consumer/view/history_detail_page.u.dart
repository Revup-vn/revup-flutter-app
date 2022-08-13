import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../l10n/l10n.dart';
import '../model/history_model.dart';
import '../widgets/order_detail_feedback.u.dart';
import '../widgets/order_detail_service.u.dart';
import '../widgets/order_detail_status.u.dart';
import '../widgets/order_details.u.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({super.key, required this.historyModel});
  final HistoryModel historyModel;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: AutoSizeText(l10n.orderInformationLabel),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            OrderDetailStatus(historyModel: historyModel),
            const Divider(
              height: 1,
              thickness: 10,
            ),
            OrderDetails(historyModel: historyModel),
            const Divider(
              height: 1,
              thickness: 10,
            ),
            OrderServiceInfor(user: historyModel.provider),
            const Divider(
              height: 1,
              thickness: 10,
            ),
            if (historyModel.isComplete && historyModel.feedback != null)
              OrderFeedback(feedback: historyModel.feedback!),
          ],
        ),
      ),
    );
  }
}
