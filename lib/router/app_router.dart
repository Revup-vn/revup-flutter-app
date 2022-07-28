import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../splash/splash.dart';
import '../invoice/view/service_invoice_page.u.dart';
import '../login/view/login_page.dart';
import '../onboarding/view/onboarding_page.dart';
import '../review-repairman/view/review_repairman_page.u.dart';
import '../sevice/view/service_detail_page.u.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage),
    AdaptiveRoute<void>(page: ServiceDetailPage),
    AdaptiveRoute<void>(page: ServiceInvoicePage),
    AdaptiveRoute<void>(page: ReviewRepairmanPage, initial: true),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
  ],
)
class AppRouter extends _$AppRouter {}
