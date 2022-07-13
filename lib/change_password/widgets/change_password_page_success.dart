import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../router/app_router.dart';

class ChangePasswordSuccess extends StatelessWidget {
  const ChangePasswordSuccess(
    this.phoneNumber,
    this.currentPincode, {
    super.key,
  });
  final String phoneNumber;
  final String currentPincode;
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
