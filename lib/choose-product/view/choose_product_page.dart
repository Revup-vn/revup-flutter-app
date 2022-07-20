import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/choose_product_bloc.dart';
import 'choose_product_view.dart';

class ChooseProductPage extends StatelessWidget {
  const ChooseProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ChooseProductBloc()..add(const ChooseProductEvent.started()),
      child: const ChooseProductView(),
    );
  }
}
