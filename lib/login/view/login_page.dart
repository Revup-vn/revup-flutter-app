import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../onboarding/onboarding.dart';
import '../../router/app_router.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_success.dart';
import 'login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (BuildContext context) => LoginBloc()),
      ],
      child: BlocBuilder<AuthenticateBloc, AuthenticateState>(
        builder: (context, state) => state.maybeWhen(
          authenticated: (authType) => const LoginSucess(),
          orElse: LoginView.new,
        ),
      ),
    );
  }
}
