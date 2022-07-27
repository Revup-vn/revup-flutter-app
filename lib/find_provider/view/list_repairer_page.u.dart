import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'list_repairer_view.u.dart';

import '../bloc/find_list_repairer_bloc.dart';

class ListRepairerPage extends StatelessWidget {
  const ListRepairerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FindListRepairerBloc()
        ..add(
          const FindListRepairerEvent.started(
            hasValue: false,
          ),
        ),
      child: const Scaffold(
        body: ListRepairerView(),
      ),
    );
  }
}
