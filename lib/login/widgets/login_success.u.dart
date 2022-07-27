import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../router/app_router.gr.dart';

class LoginSucess extends StatelessWidget {
  const LoginSucess({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 3),
      () => context.router.pushAndPopUntil(
        const TestRoute(),
        predicate: (dynamic _) => false,
      ),
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
                color: Colors.green,
              ),
              Text(
                'Done!',
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
