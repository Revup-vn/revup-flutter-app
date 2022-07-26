import 'dart:async';

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../splash/splash.dart';
import '../login/view/login_page.u.dart';
import '../onboarding/view/onboarding_page.dart';
import '../otp/view/otp_page.u.dart';
import '../signup/view/signup6_page.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: OTPPage),
    AdaptiveRoute<void>(page: Signup6Page),
  ],
)
class AppRouter extends _$AppRouter {}
