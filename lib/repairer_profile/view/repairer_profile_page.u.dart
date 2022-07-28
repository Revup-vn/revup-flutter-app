import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/repairer_profile_bloc.dart';
import 'repairer_profile_view.u.dart';

class RepairerProfilePage extends StatelessWidget {
  const RepairerProfilePage(this.providerID, {super.key});
  final String providerID;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RepairerProfileBloc(providerID),
      child: const RepairerProfileView(),
    );
  }
}
