import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/update_profile_cubit.dart';
import '../widgets/update_profile_view.u.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateProfileCubit(),
      child: const UpdateProfileView(),
    );
  }
}
