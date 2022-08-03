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
import 'dart:async' as _i31;

import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i32;
import 'package:revup/account/view/account_page.u.dart' as _i26;
import 'package:revup/activate/view/activate_page.u.dart' as _i24;
import 'package:revup/find_nearby/view/find_nearby_page.dart' as _i19;
import 'package:revup/find_provider/view/list_repairer_page.u.dart' as _i21;
import 'package:revup/home/view/home_page.u.dart' as _i7;
import 'package:revup/home/widgets/home_body_page.u.dart' as _i23;
import 'package:revup/invoice/view/service_invoice_page.u.dart' as _i4;
import 'package:revup/invoice_payment/view/invoice_payment_page.u.dart' as _i5;
import 'package:revup/login/view/login_page.u.dart' as _i11;
import 'package:revup/notification_page/view/notification_page.u.dart' as _i25;
import 'package:revup/onboarding/view/onboarding_page.dart' as _i12;
import 'package:revup/order-sevice/view/repair_status_page.u.dart' as _i3;
import 'package:revup/order-sevice/view/service_detail_page.u.dart' as _i2;
import 'package:revup/otp/view/otp_page.u.dart' as _i13;
import 'package:revup/payment/view/payment_page.u.dart' as _i8;
import 'package:revup/profile/view/signup6_page.u.dart' as _i14;
import 'package:revup/profile/view/update_profile_page.u.dart' as _i9;
import 'package:revup/repairer_profile/view/repairer_profile_page.u.dart'
    as _i22;
import 'package:revup/request_provider/view/request_provider_page.dart' as _i20;
import 'package:revup/review-repairman/view/review_repairman_page.u.dart'
    as _i6;
import 'package:revup/service/choose-product/view/choose_product_page.dart'
    as _i18;
import 'package:revup/service/choose-service/view/choose_service_page.dart'
    as _i15;
import 'package:revup/service/choose-service/view/service_details_page.dart'
    as _i17;
import 'package:revup/service/models/service_data.dart' as _i29;
import 'package:revup/service/new-service/view/new_service_request_page.dart'
    as _i16;
import 'package:revup/splash/splash.dart' as _i1;
import 'package:revup/test/test.dart' as _i10;
import 'package:revup_core/core.dart' as _i30;

class AppRouter extends _i27.RootStackRouter {
  AppRouter([_i28.GlobalKey<_i28.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    ServiceDetailRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i2.ServiceDetailPage());
    },
    RepairStatusRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i3.RepairStatusPage());
    },
    ServiceInvoiceRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i4.ServiceInvoicePage());
    },
    InvoicePaymentRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i5.InvoicePaymentPage());
    },
    ReviewRepairmanRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i6.ReviewRepairmanPage());
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: _i7.HomePage(key: args.key));
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return _i27.AdaptivePage<void>(
          routeData: routeData,
          child: _i8.PaymentPage(key: args.key, user: args.user));
    },
    UpdateProfileRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i9.UpdateProfilePage());
    },
    TestRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i10.TestPage());
    },
    LoginRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i11.LoginPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i12.OnboardingPage());
    },
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return _i27.AdaptivePage<void>(
          routeData: routeData,
          child: _i13.OTPPage(args.phoneNumber, args.completer, key: args.key));
    },
    Signup6Route.name: (routeData) {
      final args = routeData.argsAs<Signup6RouteArgs>();
      return _i27.AdaptivePage<void>(
          routeData: routeData,
          child: _i14.Signup6Page(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    ChooseServiceRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i15.ChooseServicePage());
    },
    NewServiceRequestRoute.name: (routeData) {
      return _i27.AdaptivePage<_i29.ServiceData>(
          routeData: routeData, child: const _i16.NewServiceRequestPage());
    },
    ServiceDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailsRouteArgs>();
      return _i27.AdaptivePage<void>(
          routeData: routeData,
          child: _i17.ServiceDetailsPage(
              key: args.key, serviceData: args.serviceData));
    },
    ChooseProductRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i18.ChooseProductPage());
    },
    FindNearbyRoute.name: (routeData) {
      final args = routeData.argsAs<FindNearbyRouteArgs>();
      return _i27.AdaptivePage<void>(
          routeData: routeData,
          child: _i19.FindNearbyPage(
              key: args.key, currentLocation: args.currentLocation));
    },
    RequestProviderRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i20.RequestProviderPage());
    },
    ListRepairerRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i21.ListRepairerPage());
    },
    RepairerProfileRoute.name: (routeData) {
      final args = routeData.argsAs<RepairerProfileRouteArgs>();
      return _i27.AdaptivePage<void>(
          routeData: routeData,
          child: _i22.RepairerProfilePage(args.providerID, key: args.key));
    },
    HomeBodyRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i23.HomeBodyPage());
    },
    ActivateRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i24.ActivatePage());
    },
    NotificationRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i25.NotificationPage());
    },
    AccountRoute.name: (routeData) {
      return _i27.AdaptivePage<void>(
          routeData: routeData, child: const _i26.AccountPage());
    }
  };

  @override
  List<_i27.RouteConfig> get routes => [
        _i27.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i27.RouteConfig(ServiceDetailRoute.name, path: '/service-detail-page'),
        _i27.RouteConfig(RepairStatusRoute.name, path: '/repair-status-page'),
        _i27.RouteConfig(ServiceInvoiceRoute.name,
            path: '/service-invoice-page'),
        _i27.RouteConfig(InvoicePaymentRoute.name,
            path: '/invoice-payment-page'),
        _i27.RouteConfig(ReviewRepairmanRoute.name,
            path: '/review-repairman-page'),
        _i27.RouteConfig(HomeRoute.name, path: '/', children: [
          _i27.RouteConfig(HomeBodyRoute.name,
              path: 'home-body-page', parent: HomeRoute.name),
          _i27.RouteConfig(ActivateRoute.name,
              path: 'activate-page', parent: HomeRoute.name),
          _i27.RouteConfig(NotificationRoute.name,
              path: 'notification-page', parent: HomeRoute.name),
          _i27.RouteConfig(AccountRoute.name,
              path: 'account-page', parent: HomeRoute.name)
        ]),
        _i27.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i27.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i27.RouteConfig(TestRoute.name, path: '/test-page'),
        _i27.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i27.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i27.RouteConfig(OTPRoute.name, path: '/o-tp-page'),
        _i27.RouteConfig(Signup6Route.name, path: '/signup6-page'),
        _i27.RouteConfig(ChooseServiceRoute.name, path: '/choose-service-page'),
        _i27.RouteConfig(NewServiceRequestRoute.name,
            path: '/new-service-request-page'),
        _i27.RouteConfig(ServiceDetailsRoute.name,
            path: '/service-details-page'),
        _i27.RouteConfig(ChooseProductRoute.name, path: '/choose-product-page'),
        _i27.RouteConfig(FindNearbyRoute.name, path: '/find-nearby-page'),
        _i27.RouteConfig(RequestProviderRoute.name,
            path: '/request-provider-page'),
        _i27.RouteConfig(ListRepairerRoute.name, path: '/list-repairer-page'),
        _i27.RouteConfig(RepairerProfileRoute.name,
            path: '/repairer-profile-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i27.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.ServiceDetailPage]
class ServiceDetailRoute extends _i27.PageRouteInfo<void> {
  const ServiceDetailRoute()
      : super(ServiceDetailRoute.name, path: '/service-detail-page');

  static const String name = 'ServiceDetailRoute';
}

/// generated route for
/// [_i3.RepairStatusPage]
class RepairStatusRoute extends _i27.PageRouteInfo<void> {
  const RepairStatusRoute()
      : super(RepairStatusRoute.name, path: '/repair-status-page');

  static const String name = 'RepairStatusRoute';
}

/// generated route for
/// [_i4.ServiceInvoicePage]
class ServiceInvoiceRoute extends _i27.PageRouteInfo<void> {
  const ServiceInvoiceRoute()
      : super(ServiceInvoiceRoute.name, path: '/service-invoice-page');

  static const String name = 'ServiceInvoiceRoute';
}

/// generated route for
/// [_i5.InvoicePaymentPage]
class InvoicePaymentRoute extends _i27.PageRouteInfo<void> {
  const InvoicePaymentRoute()
      : super(InvoicePaymentRoute.name, path: '/invoice-payment-page');

  static const String name = 'InvoicePaymentRoute';
}

/// generated route for
/// [_i6.ReviewRepairmanPage]
class ReviewRepairmanRoute extends _i27.PageRouteInfo<void> {
  const ReviewRepairmanRoute()
      : super(ReviewRepairmanRoute.name, path: '/review-repairman-page');

  static const String name = 'ReviewRepairmanRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i27.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
      : super(HomeRoute.name,
            path: '/',
            args: HomeRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.PaymentPage]
class PaymentRoute extends _i27.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({_i28.Key? key, required _i30.AppUser user})
      : super(PaymentRoute.name,
            path: '/payment-page',
            args: PaymentRouteArgs(key: key, user: user));

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs({this.key, required this.user});

  final _i28.Key? key;

  final _i30.AppUser user;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i9.UpdateProfilePage]
class UpdateProfileRoute extends _i27.PageRouteInfo<void> {
  const UpdateProfileRoute()
      : super(UpdateProfileRoute.name, path: '/update-profile-page');

  static const String name = 'UpdateProfileRoute';
}

/// generated route for
/// [_i10.TestPage]
class TestRoute extends _i27.PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i11.LoginPage]
class LoginRoute extends _i27.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i12.OnboardingPage]
class OnboardingRoute extends _i27.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i13.OTPPage]
class OTPRoute extends _i27.PageRouteInfo<OTPRouteArgs> {
  OTPRoute(
      {required String phoneNumber,
      required _i31.Completer<dynamic> completer,
      _i28.Key? key})
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

  final _i31.Completer<dynamic> completer;

  final _i28.Key? key;

  @override
  String toString() {
    return 'OTPRouteArgs{phoneNumber: $phoneNumber, completer: $completer, key: $key}';
  }
}

/// generated route for
/// [_i14.Signup6Page]
class Signup6Route extends _i27.PageRouteInfo<Signup6RouteArgs> {
  Signup6Route(
      {required _i31.Completer<_i30.AppUser> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i28.Key? key})
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

  final _i31.Completer<_i30.AppUser> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i28.Key? key;

  @override
  String toString() {
    return 'Signup6RouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i15.ChooseServicePage]
class ChooseServiceRoute extends _i27.PageRouteInfo<void> {
  const ChooseServiceRoute()
      : super(ChooseServiceRoute.name, path: '/choose-service-page');

  static const String name = 'ChooseServiceRoute';
}

/// generated route for
/// [_i16.NewServiceRequestPage]
class NewServiceRequestRoute extends _i27.PageRouteInfo<void> {
  const NewServiceRequestRoute()
      : super(NewServiceRequestRoute.name, path: '/new-service-request-page');

  static const String name = 'NewServiceRequestRoute';
}

/// generated route for
/// [_i17.ServiceDetailsPage]
class ServiceDetailsRoute extends _i27.PageRouteInfo<ServiceDetailsRouteArgs> {
  ServiceDetailsRoute({_i28.Key? key, required _i29.ServiceData serviceData})
      : super(ServiceDetailsRoute.name,
            path: '/service-details-page',
            args: ServiceDetailsRouteArgs(key: key, serviceData: serviceData));

  static const String name = 'ServiceDetailsRoute';
}

class ServiceDetailsRouteArgs {
  const ServiceDetailsRouteArgs({this.key, required this.serviceData});

  final _i28.Key? key;

  final _i29.ServiceData serviceData;

  @override
  String toString() {
    return 'ServiceDetailsRouteArgs{key: $key, serviceData: $serviceData}';
  }
}

/// generated route for
/// [_i18.ChooseProductPage]
class ChooseProductRoute extends _i27.PageRouteInfo<void> {
  const ChooseProductRoute()
      : super(ChooseProductRoute.name, path: '/choose-product-page');

  static const String name = 'ChooseProductRoute';
}

/// generated route for
/// [_i19.FindNearbyPage]
class FindNearbyRoute extends _i27.PageRouteInfo<FindNearbyRouteArgs> {
  FindNearbyRoute({_i28.Key? key, required _i32.LatLng currentLocation})
      : super(FindNearbyRoute.name,
            path: '/find-nearby-page',
            args: FindNearbyRouteArgs(
                key: key, currentLocation: currentLocation));

  static const String name = 'FindNearbyRoute';
}

class FindNearbyRouteArgs {
  const FindNearbyRouteArgs({this.key, required this.currentLocation});

  final _i28.Key? key;

  final _i32.LatLng currentLocation;

  @override
  String toString() {
    return 'FindNearbyRouteArgs{key: $key, currentLocation: $currentLocation}';
  }
}

/// generated route for
/// [_i20.RequestProviderPage]
class RequestProviderRoute extends _i27.PageRouteInfo<void> {
  const RequestProviderRoute()
      : super(RequestProviderRoute.name, path: '/request-provider-page');

  static const String name = 'RequestProviderRoute';
}

/// generated route for
/// [_i21.ListRepairerPage]
class ListRepairerRoute extends _i27.PageRouteInfo<void> {
  const ListRepairerRoute()
      : super(ListRepairerRoute.name, path: '/list-repairer-page');

  static const String name = 'ListRepairerRoute';
}

/// generated route for
/// [_i22.RepairerProfilePage]
class RepairerProfileRoute
    extends _i27.PageRouteInfo<RepairerProfileRouteArgs> {
  RepairerProfileRoute({required String providerID, _i28.Key? key})
      : super(RepairerProfileRoute.name,
            path: '/repairer-profile-page',
            args: RepairerProfileRouteArgs(providerID: providerID, key: key));

  static const String name = 'RepairerProfileRoute';
}

class RepairerProfileRouteArgs {
  const RepairerProfileRouteArgs({required this.providerID, this.key});

  final String providerID;

  final _i28.Key? key;

  @override
  String toString() {
    return 'RepairerProfileRouteArgs{providerID: $providerID, key: $key}';
  }
}

/// generated route for
/// [_i23.HomeBodyPage]
class HomeBodyRoute extends _i27.PageRouteInfo<void> {
  const HomeBodyRoute() : super(HomeBodyRoute.name, path: 'home-body-page');

  static const String name = 'HomeBodyRoute';
}

/// generated route for
/// [_i24.ActivatePage]
class ActivateRoute extends _i27.PageRouteInfo<void> {
  const ActivateRoute() : super(ActivateRoute.name, path: 'activate-page');

  static const String name = 'ActivateRoute';
}

/// generated route for
/// [_i25.NotificationPage]
class NotificationRoute extends _i27.PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: 'notification-page');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i26.AccountPage]
class AccountRoute extends _i27.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account-page');

  static const String name = 'AccountRoute';
}
