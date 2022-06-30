import 'package:auto_route/auto_route.dart';
import 'package:revup/onboarding/view/onboarding_page.dart';
import 'package:revup/test/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:revup/test/test.dart';
import '../../splash/splash.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: OnboardingPage),
  ],
)
class AppRouter extends _$AppRouter {}
