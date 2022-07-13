import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/pincode/pincode_enums.dart';
import '../../core/components/pincode/view/pincode_page.dart';
import '../../l10n/l10n.dart';
import '../../router/app_router.dart';
import '../bloc/login_password_bloc.dart';
import '../widgets/login_success.dart';

class LoginPasswordView extends StatelessWidget {
  const LoginPasswordView(this._phoneNumber, {super.key});
  final String _phoneNumber;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final listLabelByPincodeType = <String, String>{
      'phoneNumber': _phoneNumber,
      'headLineLabel': l10n.enterPasswordLabel,
      'bodyLabel': l10n.loginPhoneNumberLabel,
      'footerLabel': l10n.forgotPasswordLabel,
    };
    return Scaffold(
      body: Center(
        child: BlocBuilder<LoginPasswordBloc, LoginPasswordState>(
          builder: (context, state) {
            return state.when(
              initial: (phoneNumber) => PinCodePage(
                PinCodeType.login,
                submitPassword,
                onPressInk,
                listLabelByPincodeType: listLabelByPincodeType,
                '',
              ),
              failure: (errorMessage) => PinCodePage(
                PinCodeType.login,
                submitPassword,
                onPressInk,
                listLabelByPincodeType: listLabelByPincodeType,
                errorMessage,
              ),
              success: (user) => const LoginSuccess(),
            );
          },
        ),
      ),
    );
  }

  void submitPassword(
    BuildContext context,
    String phoneNumber,
    String pincode,
  ) {
    context.read<LoginPasswordBloc>().add(
          LoginPasswordEvent.submit(
            phoneNumber: phoneNumber,
            pinCode: pincode,
          ),
        );
  }

  void onPressInk(
    PinCodeType type,
    BuildContext context,
    String phoneNumber,
  ) {
    context.router.popAndPush(
      OTPRoute(phoneNumber: phoneNumber, type: PinCodeType.login),
      //predicate: (_) => false,
    );
  }
}
