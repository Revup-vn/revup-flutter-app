import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../router/app_router.dart';
import '../bloc/otp_bloc.dart';
import '../enum/otp_enums.dart';
import '../widgets/otp_main_content.dart';

class OTPView extends StatelessWidget {
  const OTPView(this.phoneNumber, this.type, {super.key});
  final String phoneNumber;
  final OTPType type;

  @override
  Widget build(BuildContext context) {
    return BlocListener<OTPBloc, OTPState>(
      child: OTPMainContent(phoneNumber, type),
      listener: (context, state) => state.maybeWhen(
        successToLogin: (phoneNumber, credential) => context.router.push(
          const TestRoute(),
        ),
        successToSignup: (phoneNumber, credential) => context.router.push(
          const TestRoute(),
        ),
        orElse: () => unit,
      ),
    );
  }
}
