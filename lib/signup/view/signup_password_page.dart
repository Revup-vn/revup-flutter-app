import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/pincode/bloc/pincode_bloc.dart';
import '../../core/components/pincode/pincode_enums.dart';
import '../bloc/signup_password_bloc.dart';
import 'signup_password_view.dart';

class SignupPasswordPage extends StatelessWidget {
  const SignupPasswordPage(
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
          create: (_) => SignupPasswordBloc(accessToken, phoneNumber),
        ),
        BlocProvider(
          create: (_) => PincodeBloc(),
        ),
      ],
      child: SignupPasswordView(
        phoneNumber,
        type,
        accessToken,
      ),
    );
  }
}
