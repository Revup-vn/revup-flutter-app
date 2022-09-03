import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/otp_cubit.dart';
import 'otp_view.dart';

class OTPPage extends StatelessWidget {
  const OTPPage(this.phoneNumber, this.completer, {super.key});
  final Completer<String> completer;
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(),
      child: OtpView(phoneNumber, completer),
    );
  }
}
