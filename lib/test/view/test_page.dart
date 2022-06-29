import 'package:flutter/material.dart';

import 'package:revup/l10n/l10n.dart';
import 'package:revup/login/widgets/login_enter_password.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return const Scaffold(
      body: LoginEnterPassword(),
    );
  }
}
