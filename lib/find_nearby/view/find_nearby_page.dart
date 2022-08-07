import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../map/autocomplete/bloc/autocomplete_bloc.dart';
import '../../map/location/bloc/location_bloc.dart';
import 'find_nearby_view.dart';

class FindNearbyPage extends StatelessWidget {
  const FindNearbyPage({super.key, required this.currentLocation});

  final LatLng currentLocation;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocationBloc()),
        BlocProvider(create: (context) => AutocompleteBloc()),
      ],
      child: FindNearbyView(
        initCameraPosition: currentLocation,
      ),
    );
  }
}
