import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../l10n/l10n.dart';

class SupportHomePage extends StatelessWidget {
  const SupportHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      height: 140,
      color: Theme.of(context).colorScheme.inversePrimary,
      alignment: Alignment.center, // where to position the child
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onPrimary,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onPrimary,
              spreadRadius: 6,
            ),
          ],
        ),
        width: 350,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  'assets/screens/sos.svg',
                  width: 70,
                ),
                AutoSizeText(
                  l10n.sosLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  'assets/screens/vehicle_maintenance.svg',
                  width: 70,
                ),
                AutoSizeText(
                  l10n.vehicleMaintenanceLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  'assets/screens/gas_station.svg',
                  width: 70,
                ),
                AutoSizeText(
                  l10n.gasStationLabel,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
