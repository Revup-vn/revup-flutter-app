import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../otp/enum/otp_enums.dart';
import '../../splash/splash.dart';
import '../onboarding/view/onboarding_page.dart';
import '../otp/view/otp_page.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: OTPPage),
  ],
)
class AppRouter extends _$AppRouter {}
