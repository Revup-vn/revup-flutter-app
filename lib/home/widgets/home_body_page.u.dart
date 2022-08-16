import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../bloc/home_bloc.dart';
import 'bloc/app_service_bloc.dart';
import 'home_body_view.u.dart';

class HomeBodyPage extends StatelessWidget {
  const HomeBodyPage({super.key, required this.user});
  final AppUser user;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) =>
              HomeBloc(context.read(), context.read(), context.read(), user),
        ),
        BlocProvider<AppServiceBloc>(
          create: (_) => AppServiceBloc(),
        ),
      ],
      child: const HomeBodyView(),
    );
  }
}
