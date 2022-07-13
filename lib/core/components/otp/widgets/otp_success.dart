import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../../../router/router.dart';
import '../../pincode/pincode_enums.dart';

class OTPSuccess extends StatelessWidget {
  const OTPSuccess(this.accessToken, this.phoneNumber, this.type, {super.key});
  final String phoneNumber;
  final String accessToken;
  final PinCodeType type;

  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(
      const Duration(seconds: 3),
      () {
        if (type == PinCodeType.login) {
          context.router.push(
            EnterNewPasswordRoute(
              accessToken: accessToken,
              phoneNumber: phoneNumber,
              type: type,
            ), //nhap mat khau moi
          );
        } else if (type == PinCodeType.signup) {
          context.router.push(
            const TestRoute(), //sigup
          );
        }
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
