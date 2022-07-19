import 'package:flutter/material.dart';

import '../widgets/repairer_profile_maincontent.u.dart';

class RepairerProfilePage extends StatelessWidget {
  const RepairerProfilePage(this.providerID, {super.key});
  final String providerID;
  @override
  Widget build(BuildContext context) {
    return const RepairerProfileMainContent();
  }
}
