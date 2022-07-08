import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/pincode.dart';
import '../../l10n/l10n.dart';
import '../bloc/login_password_bloc.dart';

class LoginPasswordView extends StatelessWidget {
  const LoginPasswordView(this._phoneNumber, {super.key});
  final String _phoneNumber;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: Center(
        child: BlocBuilder<LoginPasswordBloc, LoginPasswordState>(
          builder: (context, state) {
            return state.when(
              initial: (phoneNumber) => PinCode(
                phoneNumber: phoneNumber ?? _phoneNumber,
                bodyLabel: l10n.loginPhoneNumberLabel,
                headLineLabel: l10n.enterPasswordLabel,
                footerLabel: l10n.forgotPasswordLabel,
                buttonLabel: '',
                hasButton: false,
                '',
              ),
              failure: (errorMessage, phoneNumber) => PinCode(
                phoneNumber: phoneNumber,
                bodyLabel: l10n.loginPhoneNumberLabel,
                headLineLabel: l10n.enterPasswordLabel,
                footerLabel: l10n.forgotPasswordLabel,
                buttonLabel: l10n.forgotPasswordLabel,
                hasButton: false,
                errorMessage,
              ),
            );
          },
        ),
      ),
    );
  }
}
