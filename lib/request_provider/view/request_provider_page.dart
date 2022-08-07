import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../find_provider/models/provider_data.u.dart';
import '../../map/location/bloc/location_bloc.dart';
import '../bloc/request_provider_bloc.dart';
import 'request_provider_view.u.dart';

class RequestProviderPage extends StatelessWidget {
  const RequestProviderPage({super.key, required this.providerData});
  final ProviderData providerData;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocationBloc(),
        ),
        BlocProvider(
          create: (context) =>
              RequestProviderBloc(providerData, context.read()),
        )
      ],
      child: RequestProviderView(
        providerData: providerData,
      ),
    );
  }
}
