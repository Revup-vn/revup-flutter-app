import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../bloc/otp_bloc.dart';
import '../enum/otp_enums.dart';
import 'otp_view.dart';

class OTPPage extends StatelessWidget {
  const OTPPage(this.phoneNumber, this.type, {super.key});
  final String phoneNumber;
  final OTPType type;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OTPBloc(),
      child: OTPView(phoneNumber, type),
    );
  }
}
