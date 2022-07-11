import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/choose_service_bloc.dart';
import '../widgets/cubit/service_list_tile_cubit.dart';
import 'choose_service_view.dart';

class ChooseServicePage extends StatelessWidget {
  const ChooseServicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChooseServiceBloc(),
        ),
        BlocProvider(
          create: (context) => ServiceListTileCubit(),
        )
      ],
      child: const ChooseServiceView(),
    );
  }
}
