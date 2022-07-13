import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../router/app_router.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 3),
      () => context.router.push(
        const TestRoute(),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Flexible(
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
