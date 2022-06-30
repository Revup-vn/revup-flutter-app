import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:revup/gen/assets.gen.dart';
import '../../router/router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  // TODO(tcmhoang): Authentication

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 5),
      () => context.router.pushAndPopUntil(
        const TestRoute(),
        predicate: (dynamic _) => false,
      ),
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
