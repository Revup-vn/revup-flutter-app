import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:revup/gen/assets.gen.dart';
import 'package:revup/l10n/l10n.dart';
import 'package:revup/payment/widgets/payment_item.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
            child: AutoSizeText(
              l10n.paymentLabel,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
            child: AutoSizeText(
              l10n.morePaymentMethodsLabel,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PaymentItem(
                paymentIcon: Assets.screens.iconsZalo.svg(),
                paymentName: l10n.zaloPayLabel,
              ),
              PaymentItem(
                paymentIcon: Assets.screens.iconCash.svg(),
                paymentName: l10n.cashLabel,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
