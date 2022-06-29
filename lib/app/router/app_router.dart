import 'package:auto_route/auto_route.dart';
import 'package:revup/login/view/login_page.dart';
import 'package:revup/login/view/login_view.dart';
import 'package:revup/login/widgets/login_enter_password.dart';
import 'package:revup/test/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../splash/splash.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<void>(page: SplashPage, initial: true),
    AdaptiveRoute<void>(page: TestPage),
    AdaptiveRoute<void>(page: LoginPage),
    
  ],
)
class AppRouter extends _$AppRouter {}
