import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import 'repairer_feedback.u.dart';
import 'repairer_services.u.dart';

class RepairerProfileTabBar extends StatelessWidget {
  const RepairerProfileTabBar({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(
              child: Text(
                context.l10n.serviceLabel,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                context.l10n.ratingLabel,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            RepairerProfileServices(),
            RepairerProfileFeedback(),
          ],
        ),
      ),
    );
  }
}
