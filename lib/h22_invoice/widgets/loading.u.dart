import 'package:flutter/material.dart';

class InvoiceLoading extends StatelessWidget {
  const InvoiceLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
