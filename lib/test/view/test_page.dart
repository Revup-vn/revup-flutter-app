import 'package:flutter/material.dart';
import '../../search/widgets/list_repairer.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListRepairer(),
    );
  }
}
