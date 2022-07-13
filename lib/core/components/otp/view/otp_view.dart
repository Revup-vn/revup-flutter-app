import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../l10n/l10n.dart';
import '../../../../router/router.dart';
import '../../pincode/pincode_enums.dart';
import '../../pincode/view/pincode_page.dart';
import '../bloc/otp_bloc.dart';

class OTPView extends StatelessWidget {
  const OTPView(this.phoneNumber, {super.key});
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final listLabelByPincodeType = <String, String>{
      'phoneNumber': phoneNumber,
      'headLineLabel': l10n.enterOTPCodeLabel,
      'bodyLabel': l10n.sendOTPCodeToLabel,
      'footerLabel': l10n.resendOTPLabel,
    };
    return Scaffold(
      body: Center(
        child: BlocConsumer<OTPBloc, OTPState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (phoneNumber, accessToken, type) {
                if (type == PinCodeType.login) {
                  context.router.push(
                    EnterNewPasswordRoute(
                      phoneNumber: phoneNumber,
                      type: type,
                      accessToken: accessToken,
                    ),
                  );
                } else if (type == PinCodeType.signup) {
                  context.router.push(
                    SignupPasswordRoute(
                      phoneNumber: phoneNumber,
                      type: type,
                      accessToken: accessToken,
                    ),
                  );
                }
              },
              orElse: () => false,
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => PinCodePage(
                PinCodeType.otp,
                submitOTP,
                onPressInk,
                '',
                listLabelByPincodeType: listLabelByPincodeType,
              ),
              failure: (errorMessage) => PinCodePage(
                PinCodeType.otp,
                submitOTP,
                onPressInk,
                errorMessage,
                listLabelByPincodeType: listLabelByPincodeType,
              ),
              resend: (String phoneNumber, String? errorMessage) => PinCodePage(
                PinCodeType.otp,
                submitOTP,
                onPressInk,
                errorMessage ?? '',
                listLabelByPincodeType: listLabelByPincodeType,
              ),
            );
          },
        ),
      ),
    );
  }

  void submitOTP(
    BuildContext context,
    String phoneNumber,
    String pincode,
  ) {
    context.read<OTPBloc>().add(
          OTPEvent.submit(
            phoneNumber: phoneNumber,
            otpCode: pincode,
          ),
        );
  }

  void onPressInk(
    PinCodeType type,
    BuildContext context,
    String phoneNumber,
  ) {
    context.read<OTPBloc>().add(
          OTPEvent.pressResendOTP(
            phoneNumber: phoneNumber,
          ),
        );
  }
}
