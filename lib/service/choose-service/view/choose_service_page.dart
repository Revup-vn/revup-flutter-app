import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/choose_service_bloc.u.dart';
import 'choose_service_view.u.dart';

class ChooseServicePage extends StatelessWidget {
  const ChooseServicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseServiceBloc()
        ..add(
          const ChooseServiceEvent.started(),
        ),
      child: const ChooseServiceView(),
    );
  }
}
