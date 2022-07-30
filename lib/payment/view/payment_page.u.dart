import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../widgets/payment_item.u.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          l10n.paymentLabel,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
            child: AutoSizeText(
              l10n.morePaymentMethodsLabel,
              style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold) ??
                  const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: PaymentItem(
                  paymentIcon: Assets.screens.iconsZalo.svg(),
                  paymentName: l10n.zaloPayLabel,
                  clickCallback: () {
                    // TODO(namngoc231): payment ZaloPay
                  },
                ),
              ),
              Expanded(
                child: PaymentItem(
                  paymentIcon: Assets.screens.iconMomo.svg(),
                  paymentName: l10n.momoLabel,
                  clickCallback: () {
                    // TODO(namngoc231): payment MoMo
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
