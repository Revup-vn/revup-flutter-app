import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../../../router/router.dart';
import '../../pincode/pincode_enums.dart';

class EnterNewPasswordSuccess extends StatelessWidget {
  const EnterNewPasswordSuccess(
    this.accessToken,
    this.phoneNumber,
    this.type,
    this.pincode, {
    super.key,
  });
  final String phoneNumber;
  final String? accessToken;
  final PinCodeType type;
  final String pincode;

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 3),
      () {
        context.router.push(
          const TestRoute(), //nhap mat khau moi
        );
      },
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
