import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/pincode/pincode_enums.dart';
import '../../core/components/pincode/view/pincode_page.dart';
import '../../l10n/l10n.dart';
import '../bloc/change_password_bloc.dart';
import '../widgets/change_password_page_success.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView(this.phoneNumber, {super.key});
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final listLabelByPincodeType = <String, String>{
      'phoneNumber': phoneNumber,
      'headLineLabel': l10n.currentPasswordLabel,
      'bodyLabel': '',
      'footerLabel': l10n.showPasswordLabel,
    };
    return Scaffold(
      body: Center(
        child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
          builder: (context, state) {
            return state.when(
              initial: () => PinCodePage(
                PinCodeType.changePassword,
                submitFunction,
                onPressInk,
                '',
                listLabelByPincodeType: listLabelByPincodeType,
              ),
              success: ChangePasswordSuccess.new,
              failure: (errorMessage) => PinCodePage(
                PinCodeType.changePassword,
                submitFunction,
                onPressInk,
                errorMessage,
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
    context.read<ChangePasswordBloc>().add(
          ChangePasswordEvent.submit(
            phoneNumber: phoneNumber,
            newPincode: pincode,
          ),
        );
  }

  void onPressInk(
    PinCodeType type,
    BuildContext context,
    String phoneNumber,
  ) {}
}
