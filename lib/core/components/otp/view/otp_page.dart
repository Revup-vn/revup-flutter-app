import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../l10n/l10n.dart';
import '../../pincode/bloc/pincode_bloc.dart';
import '../../pincode/pincode_enums.dart';
import '../bloc/otp_bloc.dart';
import 'otp_view.dart';

class OTPPage extends StatelessWidget {
  const OTPPage(this.phoneNumber, this.type, {super.key});
  final String phoneNumber;
  final PinCodeType type;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => OTPBloc(context.l10n.invalidOTPLabel, type),
        ),
        BlocProvider(
          create: (_) => PincodeBloc(),
        ),
      ],
      child: OTPView(phoneNumber),
    );
  }
}
