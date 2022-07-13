import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../l10n/l10n.dart';
import '../../pincode/bloc/pincode_bloc.dart';
import '../../pincode/pincode_enums.dart';
import '../bloc/enter_new_password_bloc.dart';
import 'enter_new_password_view.dart';

class EnterNewPasswordPage extends StatelessWidget {
  const EnterNewPasswordPage(
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => EnterNewPasswordBloc(
            type,
            context.l10n.invalidPasswordLabel,
            accessToken,
          ),
        ),
        BlocProvider(
          create: (_) => PincodeBloc(),
        ),
      ],
      child: EnterNewPasswordView(phoneNumber),
    );
  }
}
