import 'package:flutter/material.dart';

import 'package:dartz/dartz.dart' hide State;

import '../../l10n/l10n.dart';
import '../models/rating_data.u.dart';
import '../models/service_data.u.dart';
import 'repairer_feedback.u.dart';
import 'repairer_services.u.dart';

class RepairerProfileTabBar extends StatefulWidget {
  const RepairerProfileTabBar(this.serviceData, this.ratingData, {super.key});
  final IVector<ServiceData> serviceData;
  final IVector<RatingData> ratingData;

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
        Container(
          child: TabBar(
            labelColor: Colors.black,
            controller: _tabController,
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
        ),
        Container(
          width: double.maxFinite,
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              RepairerProfileServices(
                serviceData: widget.serviceData,
              ),
              RepairerProfileFeedback(
                ratingData: widget.ratingData,
              ),
            ],
          ),
        )
      ],
    );
    // return DefaultTabController(
    //   initialIndex: 1,
    //   length: 2,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       bottom: TabBar(
    //         tabs: [
    //           Tab(
    //             child: Text(
    //               context.l10n.serviceLabel,
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .labelLarge!
    //                   .copyWith(fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //           Tab(
    //             child: Text(
    //               context.l10n.ratingLabel,
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .labelLarge!
    //                   .copyWith(fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     body: TabBarView(
    //       children: <Widget>[
    //         RepairerProfileServices(
    //           serviceData: serviceData,
    //         ),
    //         RepairerProfileFeedback(
    //           ratingData: ratingData,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
