import 'package:flutter/material.dart';

class LoadingOverView extends StatelessWidget {
  const LoadingOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
