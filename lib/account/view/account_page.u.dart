import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/account_bloc.dart';
import 'account_view.u.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AccountBloc()..add(const AccountEvent.started()),
      child: const AccountView(),
    );
  }
}
