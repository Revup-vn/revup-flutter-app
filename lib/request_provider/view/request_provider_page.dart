import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../map/directions/bloc/directions_bloc.dart';
import '../../map/location/bloc/location_bloc.dart';
import 'request_provider_view.dart';

class RequestProviderPage extends StatelessWidget {
  const RequestProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocationBloc(),
        ),
        BlocProvider(
          create: (context) => DirectionsBloc(),
        )
      ],
      child: const RequestProviderView(),
    );
  }
}
