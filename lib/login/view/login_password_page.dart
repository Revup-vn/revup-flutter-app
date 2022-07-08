import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../bloc/login_password_bloc.dart';
import 'login_password_view.dart';

class LoginPasswordPage extends StatelessWidget {
  const LoginPasswordPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginPasswordBloc(context.l10n.invalidPasswordLabel),
      child: const LoginPasswordView('+84 163999999'),
    );
  }
}
