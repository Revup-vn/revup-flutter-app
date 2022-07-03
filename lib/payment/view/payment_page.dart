// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:revup/gen/assets.gen.dart';
import 'package:revup/l10n/l10n.dart';
import 'package:revup/payment/widgets/payment_item.dart';

void main() => runApp(const PaymentPage());

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildListView(context),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  ListView _buildListView(BuildContext context) {
    final l10n = context.l10n;

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
          child: Text(
            l10n.paymentText,
            style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 24, 23, 23),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(32, 50, 16, 0),
          child: Text(
            l10n.morePaymentMethodsText,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 24, 23, 23),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PaymentItem(
              paymentIcon: Assets.screens.iconsZalo.svg(),
              paymentName: l10n.zaloPayText,
            ),
            PaymentItem(
              paymentIcon: Assets.screens.iconViettelmoney.svg(),
              paymentName: l10n.viettelMoneyText,
            ),
          ],
        ),
      ],
    );
  }
}
