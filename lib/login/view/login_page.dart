import 'dart:async';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../router/app_router.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_success.dart';
import 'login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginBloc(),
      child: BlocConsumer<AuthenticateBloc, AuthenticateState>(
        listener: (context, state) => state.maybeWhen(
          partial: (appUser) => context.read<AuthenticateBloc>().add(
                AuthenticateEvent.loginWithPhone(
                  phoneNumber: appUser.phone,
                  onSubmitOTP: () async {
                    final completer = Completer<String>();
                    await context.router.push(
                      OTPRoute(
                        phoneNumber: appUser.phone,
                        completer: completer,
                      ),
                    );
                    return completer.future;
                  },
                  onSignUpSubmit: (user) {
                    return appUser;
                  },
                  onSignUpSuccess: () {
                    throw NullThrownError();
                  },
                ),
              ),
          orElse: () => false,
        ),
        builder: (context, state) => state.maybeWhen(
          authenticated: (authType) => const LoginSucess(),
          orElse: LoginView.new,
        ),
      ),
    );
  }
}
