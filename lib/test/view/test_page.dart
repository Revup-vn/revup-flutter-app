import 'package:flutter/material.dart';

import 'package:revup/payment/view/payment_page.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentPage(),
    );
  }
}
