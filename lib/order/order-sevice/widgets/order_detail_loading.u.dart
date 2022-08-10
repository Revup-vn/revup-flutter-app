import 'package:flutter/material.dart';

class OrderDetailLoading extends StatelessWidget {
  const OrderDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
