import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:revup_core/core.dart';

import '../bloc/account_bloc.dart';
import 'account_builder.u.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aUser = context.read<AppUser>();

    return BlocProvider(
      create: (context) => AccountBloc(
        aUser.uuid,
        context.read(),
        context.read(),
        ImagePicker(),
        context.read(),
      ),
      child: const AccountBuilder(),
    );
  }
}
