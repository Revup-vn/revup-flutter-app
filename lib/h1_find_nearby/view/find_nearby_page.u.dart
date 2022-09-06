import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../map/autocomplete/bloc/autocomplete_bloc.dart';
import '../bloc/find_nearby_bloc.dart';
import '../cubit/address_cubit.dart';
import 'find_nearby_view.u.dart';

class FindNearbyPage extends StatelessWidget {
  const FindNearbyPage({super.key, required this.currentLocation});

  final LatLng currentLocation;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FindNearbyBloc()),
        BlocProvider(create: (context) => AutocompleteBloc()),
        BlocProvider(create: (context) => AddressCubit()),
      ],
      child: FindNearbyView(
        initCameraPosition: currentLocation,
      ),
    );
  }
}
