import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../model/user_model.dart';
import 'account_view.u.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aUser = context.read<AppUser>();
    log(aUser.toString());

    return AccountView(user: UserModel.fromDto(aUser), model: aUser);
  }
}
