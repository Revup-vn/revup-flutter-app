import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../router/app_router.dart';

class LoginFailure extends StatelessWidget {
  const LoginFailure({
    super.key,
    required this.errorMessage,
  });
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 3),
      () {
        context.router.push(const LoginRoute());
      },
    );
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                color: Colors.red,
              ),
              Text(
                errorMessage,
                style: Theme.of(context).textTheme.headline5,
              ),
              const CircularProgressIndicator.adaptive(),
            ],
          ),
        )
      ],
    );
  }
}

class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home');

  static const String name = 'HomePageRoute';
}
