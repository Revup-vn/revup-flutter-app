import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../map/location/bloc/location_bloc.dart';
import '../../shared/utils.dart';
import '../bloc/h16_map_route_bloc.dart';
import '../cubit/realtime_location_cubit.dart';
import 'h16_map_route_view.dart';

class MapRoutePage extends StatelessWidget {
  const MapRoutePage({super.key, required this.providerId});
  final String providerId;
  @override
  Widget build(BuildContext context) {
    final user = getUser(context.read<AuthenticateBloc>().state)
        .getOrElse(() => throw NullThrownError());
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocationBloc(),
        ),
        BlocProvider(
          create: (context) => RealtimeLocationCubit(
            context.read(),
            user,
          ),
        ),
        BlocProvider(
          create: (context) => H16MapRouteBloc(
            providerId,
            context.read(),
            context.read(),
          ),
        ),
      ],
      child: const H16MapRoute(),
    );
  }
}
