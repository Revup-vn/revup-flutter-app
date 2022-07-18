import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../splash/splash.dart';
import '../account/view/account_page.dart';
import '../home/view/home_page.dart';
import '../home/widgets/home_body_page.dart';
import '../login/view/login_page.dart';
import '../onboarding/view/onboarding_page.dart';
import '../payment/view/payment_page.dart';
import '../profile/view/signup6_page.dart';
import '../profile/view/update_profile_page.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(
      page: SplashPage,
    ),
    AdaptiveRoute<void>(
      page: HomePage,
      initial: true,
      children: [
        AdaptiveRoute<void>(page: HomeBodyPage),
        AdaptiveRoute<void>(page: AccountPage),
      ],
    ),
    AdaptiveRoute<void>(page: PaymentPage),
    AdaptiveRoute<void>(page: Signup6Page),
    AdaptiveRoute<void>(page: UpdateProfilePage),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
  ],
)
class AppRouter extends _$AppRouter {}
