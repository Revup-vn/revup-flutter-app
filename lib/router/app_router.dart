import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../splash/splash.dart';
import '../change_password/view/change_password_page.dart';
import '../core/components/enter_new_password/view/enter_new_password_page.dart';
import '../core/components/otp/view/otp_page.dart';
import '../core/components/pincode/pincode_enums.dart';
import '../login/view/login_password_page.dart';
import '../login/view/login_page.dart';
import '../onboarding/view/onboarding_page.dart';
import '../signup/view/signup_password_page.dart';
import '../test/test.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    AdaptiveRoute<void>(page: OnboardingPage),
    AdaptiveRoute<void>(page: LoginPasswordPage),
    AdaptiveRoute<void>(page: OTPPage),
    AdaptiveRoute<void>(page: ChangePasswordPage),
    AdaptiveRoute<void>(page: EnterNewPasswordPage),
    AdaptiveRoute<void>(page: SignupPasswordPage),
  ],
)
class AppRouter extends _$AppRouter {}
