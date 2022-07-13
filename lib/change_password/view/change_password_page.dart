import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/components/pincode/bloc/pincode_bloc.dart';
import '../../l10n/l10n.dart';
import '../bloc/change_password_bloc.dart';
import 'change_password_view.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    const phoneNumber = '019231239';
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ChangePasswordBloc(context.l10n.invalidPasswordLabel),
        ),
        BlocProvider(
          create: (_) => PincodeBloc(),
        ),
      ],
      child: const ChangePasswordView(phoneNumber),
    );
  }
}
