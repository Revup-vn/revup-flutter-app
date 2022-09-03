import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:revup_core/core.dart';

import '../../l10n/l10n.dart';
import '../models/rating_data.u.dart';
import '../models/service_data.u.dart';
import 'repairer_feedback.u.dart';
import 'repairer_services.u.dart';

class RepairerProfileTabBar extends StatefulWidget {
  const RepairerProfileTabBar(
    this.serviceData,
    this.ratingData,
    this.categories, {
    super.key,
    required this.providerId,
  });
  final IVector<ServiceData> serviceData;
  final IVector<RatingData> ratingData;
  final String providerId;
  final Tuple2<RepairCategory, IList<ServiceData>> categories;

  @override
  State<RepairerProfileTabBar> createState() => _RepairerProfileTabBarState();
}

class _RepairerProfileTabBarState extends State<RepairerProfileTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _tabController = TabController(length: 2, vsync: this);

    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                context.l10n.serviceLabel,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                context.l10n.ratingLabel,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
        Expanded(
          child: SizedBox(
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                RepairerProfileServices(
                  serviceData: widget.serviceData,
                  providerId: widget.providerId,
                  categories: widget.categories,
                ),
                RepairerProfileFeedback(
                  ratingData: widget.ratingData,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
