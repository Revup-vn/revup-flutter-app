import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../router/app_router.dart';
import '../bloc/otp_bloc.dart';
import '../widgets/otp_main_content.u.dart';

class OTPPage extends StatelessWidget {
  const OTPPage(this.phoneNumber, this.completer, {super.key});
  final Completer completer;
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OTPBloc>(
          create: (BuildContext context) => OTPBloc(),
        ),
      ],
      child: BlocListener<OTPBloc, OTPState>(
        child: OTPMainContent(phoneNumber, completer),
        listener: (context, state) => state.maybeWhen(
          successToLogin: (uid, phoneNumber, photoURL, completer) async =>
              context.router.push(
            Signup6Route(
              completer: completer,
              phoneNumber: phoneNumber,
              photoURL: photoURL,
              uid: uid,
            ),
          ),
          successToSignup: (phoneNumber, credential) => context.router.push(
            const TestRoute(),
          ),
          orElse: () => unit,
        ),
      ),
    );
  }
}
