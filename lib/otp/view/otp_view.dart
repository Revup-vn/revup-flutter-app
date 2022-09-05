import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/widgets/loading.u.dart';
import '../cubit/otp_cubit.dart';
import '../widgets/otp_main_content.u.dart';

class OtpView extends StatelessWidget {
  const OtpView(this.phoneNumber, this.completer, {super.key});
  final Completer<String> completer;
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpCubit, OtpState>(
      builder: (context, state) => state.when(
        initial: () => OTPMainContent(phoneNumber, completer),
        loading: Loading.new,
        success: Container.new,
      ),
      listener: (context, state) => state.maybeWhen(
        orElse: () => false,
        success: () => context.router.pop(),
      ),
    );
  }
}
