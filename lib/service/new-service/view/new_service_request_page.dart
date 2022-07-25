import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/new_service_bloc.u.dart';
import 'new_service_request_view.u.dart';

class NewServiceRequestPage extends StatelessWidget {
  const NewServiceRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewServiceBloc(),
      child: const NewServiceRequestView(),
    );
  }
}
