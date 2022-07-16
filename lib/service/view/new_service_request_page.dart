import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/choose_service_bloc.dart';
import 'new_service_request_view.dart';

class NewServiceRequestPage extends StatelessWidget {
  const NewServiceRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseServiceBloc(),
      child: const NewServiceRequestView(),
    );
  }
}
