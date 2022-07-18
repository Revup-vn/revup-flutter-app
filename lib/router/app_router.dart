import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../splash/splash.dart';
import '../find_provider/view/list_repairer_page.u.dart';
import '../login/view/login_page.dart';
import '../onboarding/view/onboarding_page.dart';
import '../repairer_profile/view/repairer_profile_page.u.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: ListRepairerPage, initial: true),
    AdaptiveRoute<void>(page: RepairerProfilePage),
  ],
)
class AppRouter extends _$AppRouter {}
