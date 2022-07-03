import 'package:auto_route/auto_route.dart';
import '../onboarding/view/onboarding_page.dart';
import '../test/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:revup/test/test.dart';
import '../../splash/splash.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: OnboardingPage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
