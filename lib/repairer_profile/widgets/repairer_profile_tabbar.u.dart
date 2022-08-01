import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart';

import '../../l10n/l10n.dart';
import '../models/rating_data.u.dart';
import '../models/service_data.u.dart';
import 'repairer_feedback.u.dart';
import 'repairer_services.u.dart';

class RepairerProfileTabBar extends StatelessWidget {
  const RepairerProfileTabBar(this.serviceData, this.ratingData, {super.key});
  final IVector<ServiceData> serviceData;
  final IVector<RatingData> ratingData;
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
            RepairerProfileServices(
              serviceData: serviceData,
            ),
            RepairerProfileFeedback(
              ratingData: ratingData,
            ),
          ],
        ),
      ),
    );
  }
}
