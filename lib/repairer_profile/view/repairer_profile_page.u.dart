import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../find_provider/models/provider_data.u.dart';
import '../bloc/repairer_profile_bloc.dart';
import 'repairer_profile_view.u.dart';

class RepairerProfilePage extends StatelessWidget {
  const RepairerProfilePage({super.key, required this.providerData});
  final ProviderData providerData;
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();

    return BlocProvider(
      create: (BuildContext context) => RepairerProfileBloc(
        context.read(),
        context.read(),
        sr,
        providerData,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: const RepairerProfileView(),
      ),
    );
  }
}
