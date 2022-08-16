import 'package:flutter/material.dart';

class ListRepairerLoading extends StatelessWidget {
  const ListRepairerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
