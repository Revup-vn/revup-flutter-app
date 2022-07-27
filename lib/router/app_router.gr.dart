// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i21;

import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:revup/account/view/account_page.u.dart' as _i17;
import 'package:revup/activate/view/activate_page.u.dart' as _i15;
import 'package:revup/home/view/home_page.u.dart' as _i2;
import 'package:revup/home/widgets/home_body_page.u.dart' as _i14;
import 'package:revup/login/view/login_page.u.dart' as _i6;
import 'package:revup/notification_page/view/notification_page.u.dart' as _i16;
import 'package:revup/onboarding/view/onboarding_page.dart' as _i7;
import 'package:revup/otp/view/otp_page.u.dart' as _i8;
import 'package:revup/payment/view/payment_page.u.dart' as _i3;
import 'package:revup/profile/view/update_profile_page.u.dart' as _i4;
import 'package:revup/service/choose-product/view/choose_product_page.dart'
    as _i13;
import 'package:revup/service/choose-service/view/choose_service_page.dart'
    as _i10;
import 'package:revup/service/choose-service/view/service_details_page.dart'
    as _i12;
import 'package:revup/service/models/service_data.dart' as _i20;
import 'package:revup/service/new-service/view/new_service_request_page.dart'
    as _i11;
import 'package:revup/signup/view/signup6_page.dart' as _i9;
import 'package:revup/splash/splash.dart' as _i1;
import 'package:revup/test/test.dart' as _i5;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i2.HomePage());
    },
    PaymentRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i3.PaymentPage());
    },
    UpdateProfileRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i4.UpdateProfilePage());
    },
    TestRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i5.TestPage());
    },
    LoginRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i6.LoginPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i7.OnboardingPage());
    },
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return _i18.AdaptivePage<void>(
          routeData: routeData,
          child: _i8.OTPPage(args.phoneNumber, args.completer, key: args.key));
    },
    Signup6Route.name: (routeData) {
      final args = routeData.argsAs<Signup6RouteArgs>();
      return _i18.AdaptivePage<void>(
          routeData: routeData,
          child: _i9.Signup6Page(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    ChooseServiceRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i10.ChooseServicePage());
    },
    NewServiceRequestRoute.name: (routeData) {
      return _i18.AdaptivePage<_i20.ServiceData>(
          routeData: routeData, child: const _i11.NewServiceRequestPage());
    },
    ServiceDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailsRouteArgs>();
      return _i18.AdaptivePage<void>(
          routeData: routeData,
          child: _i12.ServiceDetailsPage(
              key: args.key, serviceData: args.serviceData));
    },
    ChooseProductRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i13.ChooseProductPage());
    },
    HomeBodyRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i14.HomeBodyPage());
    },
    ActivateRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i15.ActivatePage());
    },
    NotificationRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i16.NotificationPage());
    },
    AccountRoute.name: (routeData) {
      return _i18.AdaptivePage<void>(
          routeData: routeData, child: const _i17.AccountPage());
    }
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i18.RouteConfig(HomeRoute.name, path: '/', children: [
          _i18.RouteConfig(HomeBodyRoute.name,
              path: 'home-body-page', parent: HomeRoute.name),
          _i18.RouteConfig(ActivateRoute.name,
              path: 'activate-page', parent: HomeRoute.name),
          _i18.RouteConfig(NotificationRoute.name,
              path: 'notification-page', parent: HomeRoute.name),
          _i18.RouteConfig(AccountRoute.name,
              path: 'account-page', parent: HomeRoute.name)
        ]),
        _i18.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i18.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i18.RouteConfig(TestRoute.name, path: '/test-page'),
        _i18.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i18.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i18.RouteConfig(OTPRoute.name, path: '/o-tp-page'),
        _i18.RouteConfig(Signup6Route.name, path: '/signup6-page'),
        _i18.RouteConfig(ChooseServiceRoute.name, path: '/choose-service-page'),
        _i18.RouteConfig(NewServiceRequestRoute.name,
            path: '/new-service-request-page'),
        _i18.RouteConfig(ServiceDetailsRoute.name,
            path: '/service-details-page'),
        _i18.RouteConfig(ChooseProductRoute.name, path: '/choose-product-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.PaymentPage]
class PaymentRoute extends _i18.PageRouteInfo<void> {
  const PaymentRoute() : super(PaymentRoute.name, path: '/payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i4.UpdateProfilePage]
class UpdateProfileRoute extends _i18.PageRouteInfo<void> {
  const UpdateProfileRoute()
      : super(UpdateProfileRoute.name, path: '/update-profile-page');

  static const String name = 'UpdateProfileRoute';
}

/// generated route for
/// [_i5.TestPage]
class TestRoute extends _i18.PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i18.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i8.OTPPage]
class OTPRoute extends _i18.PageRouteInfo<OTPRouteArgs> {
  OTPRoute(
      {required String phoneNumber,
      required _i21.Completer<dynamic> completer,
      _i19.Key? key})
      : super(OTPRoute.name,
            path: '/o-tp-page',
            args: OTPRouteArgs(
                phoneNumber: phoneNumber, completer: completer, key: key));

  static const String name = 'OTPRoute';
}

class OTPRouteArgs {
  const OTPRouteArgs(
      {required this.phoneNumber, required this.completer, this.key});

  final String phoneNumber;

  final _i21.Completer<dynamic> completer;

  final _i19.Key? key;

  @override
  String toString() {
    return 'OTPRouteArgs{phoneNumber: $phoneNumber, completer: $completer, key: $key}';
  }
}

/// generated route for
/// [_i9.Signup6Page]
class Signup6Route extends _i18.PageRouteInfo<Signup6RouteArgs> {
  Signup6Route(
      {required _i21.Completer<dynamic> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i19.Key? key})
      : super(Signup6Route.name,
            path: '/signup6-page',
            args: Signup6RouteArgs(
                completer: completer,
                phoneNumber: phoneNumber,
                photoURL: photoURL,
                uid: uid,
                email: email,
                key: key));

  static const String name = 'Signup6Route';
}

class Signup6RouteArgs {
  const Signup6RouteArgs(
      {required this.completer,
      required this.phoneNumber,
      required this.photoURL,
      required this.uid,
      required this.email,
      this.key});

  final _i21.Completer<dynamic> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i19.Key? key;

  @override
  String toString() {
    return 'Signup6RouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i10.ChooseServicePage]
class ChooseServiceRoute extends _i18.PageRouteInfo<void> {
  const ChooseServiceRoute()
      : super(ChooseServiceRoute.name, path: '/choose-service-page');

  static const String name = 'ChooseServiceRoute';
}

/// generated route for
/// [_i11.NewServiceRequestPage]
class NewServiceRequestRoute extends _i18.PageRouteInfo<void> {
  const NewServiceRequestRoute()
      : super(NewServiceRequestRoute.name, path: '/new-service-request-page');

  static const String name = 'NewServiceRequestRoute';
}

/// generated route for
/// [_i12.ServiceDetailsPage]
class ServiceDetailsRoute extends _i18.PageRouteInfo<ServiceDetailsRouteArgs> {
  ServiceDetailsRoute({_i19.Key? key, required _i20.ServiceData serviceData})
      : super(ServiceDetailsRoute.name,
            path: '/service-details-page',
            args: ServiceDetailsRouteArgs(key: key, serviceData: serviceData));

  static const String name = 'ServiceDetailsRoute';
}

class ServiceDetailsRouteArgs {
  const ServiceDetailsRouteArgs({this.key, required this.serviceData});

  final _i19.Key? key;

  final _i20.ServiceData serviceData;

  @override
  String toString() {
    return 'ServiceDetailsRouteArgs{key: $key, serviceData: $serviceData}';
  }
}

/// generated route for
/// [_i13.ChooseProductPage]
class ChooseProductRoute extends _i18.PageRouteInfo<void> {
  const ChooseProductRoute()
      : super(ChooseProductRoute.name, path: '/choose-product-page');

  static const String name = 'ChooseProductRoute';
}

/// generated route for
/// [_i14.HomeBodyPage]
class HomeBodyRoute extends _i18.PageRouteInfo<void> {
  const HomeBodyRoute() : super(HomeBodyRoute.name, path: 'home-body-page');

  static const String name = 'HomeBodyRoute';
}

/// generated route for
/// [_i15.ActivatePage]
class ActivateRoute extends _i18.PageRouteInfo<void> {
  const ActivateRoute() : super(ActivateRoute.name, path: 'activate-page');

  static const String name = 'ActivateRoute';
}

/// generated route for
/// [_i16.NotificationPage]
class NotificationRoute extends _i18.PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: 'notification-page');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i17.AccountPage]
class AccountRoute extends _i18.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account-page');

  static const String name = 'AccountRoute';
}
