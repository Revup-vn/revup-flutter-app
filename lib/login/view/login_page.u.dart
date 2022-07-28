import 'dart:async';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../router/app_router.gr.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_failure.u.dart';
import '../widgets/login_success.u.dart';
import 'login_view.u.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginBloc(),
      child: BlocConsumer<AuthenticateBloc, AuthenticateState>(
        listener: (context, state) => state.maybeWhen(
          partial: (appUser) {
            var phoneNumber = appUser.phone;
            if (phoneNumber.substring(0, 3) == '+84') {
              phoneNumber = phoneNumber.substring(
                3,
                phoneNumber.length,
              );
            }
            if (phoneNumber.substring(0, 1) == '0') {
              phoneNumber = phoneNumber.substring(
                1,
                phoneNumber.length,
              );
            }

            return context.read<AuthenticateBloc>().add(
                  AuthenticateEvent.loginWithPhone(
                    phoneNumber: '+84${appUser.phone}',
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
                      return Future.value(unit);
                    },
                  ),
                );
          },
          orElse: () => false,
        ),
        builder: (context, state) => state.maybeWhen(
          authenticated: (authType) => const LoginSucess(),
          loading: LoginView.new,
          failure: (errorMessage, authFailure) {
            return authFailure!.maybeWhen(
              invalidData: (message) =>
                  LoginFailure(errorMessage: message ?? 'Something went wrong'),
              orElse: () => const LoginFailure(errorMessage: 'Unknow issues'),
            );
          },
          orElse: LoginView.new,
        ),
      ),
    );
  }
}
