import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:revup_core/core.dart';

import '../../gen/assets.gen.dart';
import '../../router/router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 5),
      () {
        final authBloc = context.read<AuthenticateBloc>();
        authBloc.state.maybeMap(
          failure: (_) {
            authBloc.add(const AuthenticateEvent.reset());

            return unit;
          },
          loading: (_) {
            authBloc.add(const AuthenticateEvent.reset());

            return unit;
          },
          orElse: () => unit,
        );
        context.router.pushAndPopUntil(
          authBloc.state.maybeWhen(
            empty: (isFirstTime) =>
                isFirstTime ? const OnboardingRoute() : const LoginRoute(),
            authenticated: (type) {
              Hive.openBox<dynamic>('authType').then(
                (value) {
                  value.put(
                    'auth',
                    type.map(
                      google: (value) =>
                          AuthType.google(user: value.user).toJson(),
                      phone: (value) =>
                          AuthType.phone(user: value.user).toJson(),
                      email: (value) =>
                          AuthType.email(user: value.user).toJson(),
                    ),
                  );
                },
              );

              return HomeRoute(user: type.user);
            },
            orElse: LoginRoute.new,
          ),
          predicate: (route) => true,
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Assets.screens.welcome.svg()),
            const Flexible(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
