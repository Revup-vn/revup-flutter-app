import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../bloc/repairer_profile_bloc.dart';
import 'repairer_profile_view.u.dart';

class RepairerProfilePage extends StatelessWidget {
  const RepairerProfilePage(this.providerID, {super.key});
  final String providerID;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();
    return BlocProvider(
      create: (BuildContext context) => RepairerProfileBloc(
        providerID,
        context.read(),
        context.read(),
        sr,
      ),
      child: const RepairerProfileView(),
    );
  }
}
