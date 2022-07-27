import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../splash/splash.dart';
import '../login/view/login_page.dart';
import '../onboarding/view/onboarding_page.dart';
import '../service/choose-product/view/choose_product_page.dart';
import '../service/choose-service/view/choose_service_page.dart';
import '../service/choose-service/view/service_details_page.dart';
import '../service/models/service_data.dart';
import '../service/new-service/view/new_service_request_page.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: ChooseServicePage),
    AdaptiveRoute<ServiceData>(page: NewServiceRequestPage),
    AdaptiveRoute<void>(page: ServiceDetailsPage),
    AdaptiveRoute<void>(page: ChooseProductPage),
  ],
)
class AppRouter extends _$AppRouter {}
