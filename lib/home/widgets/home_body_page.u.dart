import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../bloc/home_bloc.dart';
import '../cubit/home_record_cubit.dart';
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
              HomeBloc(context.read(), context.read(), user, context.read()),
        ),
        BlocProvider<HomeRecordCubit>(
          create: (_) => HomeRecordCubit(context.read(), user),
        ),
      ],
      child: const HomeBodyView(),
    );
  }
}
