import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../h6_request_provider/widgets/request_details_live.dart';
import '../../h6_request_provider/widgets/request_provider_live.dart';
import '../bloc/h16_map_route_bloc.dart';

class H16MapRoute extends StatelessWidget {
  const H16MapRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final blocPage = context.watch<H16MapRouteBloc>();
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const H16MapRouteEvent.started()),
    );

    return BlocBuilder<H16MapRouteBloc, H16MapRouteState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          success: (directions, fromMaker, toMarker, providerData, movingFees) {
            return Stack(
              children: <Widget>[
                RequestProviderLive(
                  directions: directions,
                  fromMaker: fromMaker,
                  toMarker: toMarker,
                  providerData: providerData,
                  movingFees: movingFees,
                  userStore: context.read(),
                ),
                RequestDetailsLive(
                  providerData: providerData,
                  movingFees: movingFees,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
