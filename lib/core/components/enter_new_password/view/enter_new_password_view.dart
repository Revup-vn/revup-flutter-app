import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../l10n/l10n.dart';
import '../../pincode/pincode_enums.dart';
import '../../pincode/view/pincode_page.dart';
import '../bloc/enter_new_password_bloc.dart';
import '../widgets/enter_new_password_success.dart';

class EnterNewPasswordView extends StatelessWidget {
  const EnterNewPasswordView(
    this.phoneNumber, {
    super.key,
  });
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final listLabelByPincodeType = <String, String>{
      'phoneNumber': phoneNumber,
      'headLineLabel': l10n.enterNewPassWordForgotLabel,
      'bodyLabel': '',
      'footerLabel': l10n.showPasswordLabel,
    };
    return Scaffold(
      body: Center(
        child: BlocBuilder<EnterNewPasswordBloc, EnterNewPasswordState>(
          builder: (context, state) {
            return state.when(
              initial: () => PinCodePage(
                PinCodeType.changePassword,
                submitFunction,
                onPressInk,
                '',
                listLabelByPincodeType: listLabelByPincodeType,
              ),
              success: (phoneNumber, pincode, type, accessToken) =>
                  EnterNewPasswordSuccess(
                accessToken,
                phoneNumber,
                type,
                pincode,
              ),
              failure: () => PinCodePage(
                PinCodeType.changePassword,
                submitFunction,
                onPressInk,
                l10n.invalidPasswordLabel,
                listLabelByPincodeType: listLabelByPincodeType,
              ),
            );
          },
        ),
      ),
    );
  }

  void submitFunction(
    BuildContext context,
    String phoneNumber,
    String pincode,
  ) {
    context.read<EnterNewPasswordBloc>().add(
          EnterNewPasswordEvent.submit(
            phoneNumber: phoneNumber,
            pincode: pincode,
          ),
        );
  }

  void onPressInk(
    PinCodeType type,
    BuildContext context,
    String phoneNumber,
  ) {}
}
