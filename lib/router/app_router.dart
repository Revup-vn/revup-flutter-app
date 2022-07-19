import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../splash/splash.dart';
import '../login/view/login_page.dart';
import '../choose-service/models/service_data.dart';
import '../onboarding/view/onboarding_page.dart';
import '../choose-service/view/choose_service_page.dart';
import '../new-service/view/new_service_request_page.dart';
import '../choose-service/view/service_details_page.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(
      page: ChooseServicePage,
      initial: true,
    ),
    AdaptiveRoute<void>(page: NewServiceRequestPage),
    AdaptiveRoute<void>(page: ServiceDetailsPage),
  ],
)
class AppRouter extends _$AppRouter {}
