import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../account/bloc/account_bloc.dart';
import '../bloc/profile_bloc.dart';
import 'update_profile_view.u.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AccountBloc>(
          create: (_) => AccountBloc()..add(const AccountEvent.started()),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => ProfileBloc()..add(const ProfileEvent.started()),
        )
      ],
      child: const UpdateProfileView(),
    );
  }
}
