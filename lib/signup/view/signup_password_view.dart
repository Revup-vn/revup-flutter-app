import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/pincode/pincode_enums.dart';
import '../../core/components/pincode/view/pincode_page.dart';
import '../../l10n/l10n.dart';
import '../bloc/signup_password_bloc.dart';

class SignupPasswordView extends StatelessWidget {
  const SignupPasswordView(
    this.phoneNumber,
    this.type,
    this.accessToken, {
    super.key,
  });
  final PinCodeType type;
  final String phoneNumber;
  final String accessToken;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final listLabelByPincodeType = <String, String>{
      'phoneNumber': '',
      'headLineLabel': l10n.setupPasswordLabel,
      'bodyLabel': l10n.enterNewPasswordDescriptionLabel,
      'footerLabel': l10n.showPasswordLabel,
    };
    return Scaffold(
      body: Center(
        child: BlocConsumer<SignupPasswordBloc, SignupPasswordState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (pincode) {
                //route sang confirmpassword
              },
              orElse: () => false,
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => PinCodePage(
                type,
                onSubmit,
                onPress,
                '',
                listLabelByPincodeType: listLabelByPincodeType,
              ),
              orElse: () => PinCodePage(
                type,
                onSubmit,
                onPress,
                '',
                listLabelByPincodeType: listLabelByPincodeType,
              ),
            );
          },
        ),
      ),
    );
  }

  void onSubmit(
    BuildContext context,
    String phoneNumber,
    String pincode,
  ) {}

  void onPress(
    PinCodeType type,
    BuildContext context,
    String phoneNumber,
  ) {}
}
