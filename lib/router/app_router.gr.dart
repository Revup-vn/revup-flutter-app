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

import 'dart:async' as _i37;

import 'package:flutter/material.dart' as _i33;

import 'package:auto_route/auto_route.dart' as _i32;
import 'package:revup_core/core.dart' as _i35;

import 'package:revup/account/model/user_model.dart' as _i36;
import 'package:revup/account/view/account_page.u.dart' as _i31;
import 'package:revup/find_provider/view/list_repairer_page.u.dart' as _i20;
import 'package:revup/guide-support/view/about_us_page.u.dart' as _i25;
import 'package:revup/guide-support/view/faqs_page.u.dart' as _i23;
import 'package:revup/guide-support/view/terms_privacy_page.u.dart' as _i26;
import 'package:revup/guide-support/widgets/faqs_item_otp.u.dart' as _i24;
import 'package:revup/home/view/home_page.u.dart' as _i7;
import 'package:revup/home/widgets/home_body_page.u.dart' as _i28;
import 'package:revup/invoice/view/service_invoice_page.u.dart' as _i4;
import 'package:revup/invoice_payment/view/invoice_payment_page.u.dart' as _i5;
import 'package:revup/login/view/login_page.u.dart' as _i12;
import 'package:revup/onboarding/view/onboarding_page.dart' as _i13;
import 'package:revup/order-sevice/view/repair_status_page.u.dart' as _i3;
import 'package:revup/order-sevice/view/service_detail_page.u.dart' as _i2;
import 'package:revup/otp/view/otp_page.u.dart' as _i14;
import 'package:revup/payment/view/payment_page.u.dart' as _i9;
import 'package:revup/profile/view/signup6_page.u.dart' as _i15;
import 'package:revup/profile/view/update_profile_page.u.dart' as _i11;
import 'package:revup/service/models/service_data.dart' as _i34;
import 'package:revup/splash/splash.dart' as _i1;
import 'package:revup/test/test.dart' as _i10;

import 'package:revup/history_consumer/view/history_consumer_page.u.dart'
    as _i29;
import 'package:revup/history_consumer/view/history_detail_consumer_page.u.dart'
    as _i8;
import 'package:revup/login/login_enter_phone/view/login_enter_phone_number_page.u.dart'
    as _i27;
import 'package:revup/notification_consumer/view/notification_consumer_page.u.dart'
    as _i30;
import 'package:revup/order/order_overview/view/overview_order_page.u.dart'
    as _i22;
import 'package:revup/repairer_profile/view/repairer_profile_page.u.dart'
    as _i21;
import 'package:revup/review-repairman/view/review_repairman_page.u.dart'
    as _i6;
import 'package:revup/service/choose-product/view/choose_product_page.dart'
    as _i19;
import 'package:revup/service/choose-service/view/choose_service_page.dart'
    as _i16;
import 'package:revup/service/choose-service/view/service_details_page.dart'
    as _i18;
import 'package:revup/service/new-service/view/new_service_request_page.dart'
    as _i17;

class AppRouter extends _i32.RootStackRouter {
  AppRouter([_i33.GlobalKey<_i33.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i32.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    ServiceDetailRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i2.ServiceDetailPage());
    },
    RepairStatusRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i3.RepairStatusPage());
    },
    ServiceInvoiceRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i4.ServiceInvoicePage());
    },
    InvoicePaymentRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i5.InvoicePaymentPage());
    },
    ReviewRepairmanRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i6.ReviewRepairmanPage());
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i7.HomePage(key: args.key, user: args.user));
    },
    HistoryConsumerDetailRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i8.HistoryConsumerDetailPage());
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i9.PaymentPage(
              key: args.key, user: args.user, model: args.model));
    },
    TestRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i10.TestPage());
    },
    UpdateProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfileRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i11.UpdateProfilePage(
              key: args.key, user: args.user, model: args.model));
    },
    LoginRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i12.LoginPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i13.OnboardingPage());
    },
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i14.OTPPage(args.phoneNumber, args.completer, key: args.key));
    },
    Signup6Route.name: (routeData) {
      final args = routeData.argsAs<Signup6RouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i15.Signup6Page(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    ChooseServiceRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i16.ChooseServicePage());
    },
    NewServiceRequestRoute.name: (routeData) {
      return _i32.AdaptivePage<_i34.ServiceData>(
          routeData: routeData, child: const _i17.NewServiceRequestPage());
    },
    ServiceDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailsRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i18.ServiceDetailsPage(
              key: args.key, serviceData: args.serviceData));
    },
    ChooseProductRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i19.ChooseProductPage());
    },
    ListRepairerRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i20.ListRepairerPage());
    },
    RepairerProfileRoute.name: (routeData) {
      final args = routeData.argsAs<RepairerProfileRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i21.RepairerProfilePage(args.providerID, key: args.key));
    },
    OverViewOrderRoute.name: (routeData) {
      final args = routeData.argsAs<OverViewOrderRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i22.OverViewOrderPage(
              key: args.key, providerID: args.providerID));
    },
    FAQsRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i23.FAQsPage());
    },
    FAQsItemOTPRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i24.FAQsItemOTPPage());
    },
    AboutUsRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i25.AboutUsPage());
    },
    TermsPrivacyRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i26.TermsPrivacyPage());
    },
    LoginEnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<LoginEnterPhoneRouteArgs>();
      return _i32.AdaptivePage<void>(
          routeData: routeData,
          child: _i27.LoginEnterPhonePage(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    HomeBodyRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i28.HomeBodyPage());
    },
    HistoryConsumerRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i29.HistoryConsumerPage());
    },
    NotificationConsumerRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i30.NotificationConsumerPage());
    },
    AccountRoute.name: (routeData) {
      return _i32.AdaptivePage<void>(
          routeData: routeData, child: const _i31.AccountPage());
    }
  };

  @override
  List<_i32.RouteConfig> get routes => [
        _i32.RouteConfig(SplashRoute.name, path: '/'),
        _i32.RouteConfig(ServiceDetailRoute.name, path: '/service-detail-page'),
        _i32.RouteConfig(RepairStatusRoute.name, path: '/repair-status-page'),
        _i32.RouteConfig(ServiceInvoiceRoute.name,
            path: '/service-invoice-page'),
        _i32.RouteConfig(InvoicePaymentRoute.name,
            path: '/invoice-payment-page'),
        _i32.RouteConfig(ReviewRepairmanRoute.name,
            path: '/review-repairman-page'),
        _i32.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i32.RouteConfig(HomeBodyRoute.name,
              path: 'home-body-page', parent: HomeRoute.name),
          _i32.RouteConfig(HistoryConsumerRoute.name,
              path: 'history-consumer-page', parent: HomeRoute.name),
          _i32.RouteConfig(NotificationConsumerRoute.name,
              path: 'notification-consumer-page', parent: HomeRoute.name),
          _i32.RouteConfig(AccountRoute.name,
              path: 'account-page', parent: HomeRoute.name)
        ]),
        _i32.RouteConfig(HistoryConsumerDetailRoute.name,
            path: '/history-consumer-detail-page'),
        _i32.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i32.RouteConfig(TestRoute.name, path: '/test-page'),
        _i32.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i32.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i32.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i32.RouteConfig(OTPRoute.name, path: '/o-tp-page'),
        _i32.RouteConfig(Signup6Route.name, path: '/signup6-page'),
        _i32.RouteConfig(ChooseServiceRoute.name, path: '/choose-service-page'),
        _i32.RouteConfig(NewServiceRequestRoute.name,
            path: '/new-service-request-page'),
        _i32.RouteConfig(ServiceDetailsRoute.name,
            path: '/service-details-page'),
        _i32.RouteConfig(ChooseProductRoute.name, path: '/choose-product-page'),
        _i32.RouteConfig(ListRepairerRoute.name, path: '/list-repairer-page'),
        _i32.RouteConfig(RepairerProfileRoute.name,
            path: '/repairer-profile-page'),
        _i32.RouteConfig(OverViewOrderRoute.name,
            path: '/over-view-order-page'),
        _i32.RouteConfig(FAQsRoute.name, path: '/f-aqs-page'),
        _i32.RouteConfig(FAQsItemOTPRoute.name, path: '/f-aqs-item-ot-pPage'),
        _i32.RouteConfig(AboutUsRoute.name, path: '/about-us-page'),
        _i32.RouteConfig(TermsPrivacyRoute.name, path: '/terms-privacy-page'),
        _i32.RouteConfig(LoginEnterPhoneRoute.name,
            path: '/login-enter-phone-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i32.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.ServiceDetailPage]
class ServiceDetailRoute extends _i32.PageRouteInfo<void> {
  const ServiceDetailRoute()
      : super(ServiceDetailRoute.name, path: '/service-detail-page');

  static const String name = 'ServiceDetailRoute';
}

/// generated route for
/// [_i3.RepairStatusPage]
class RepairStatusRoute extends _i32.PageRouteInfo<void> {
  const RepairStatusRoute()
      : super(RepairStatusRoute.name, path: '/repair-status-page');

  static const String name = 'RepairStatusRoute';
}

/// generated route for
/// [_i4.ServiceInvoicePage]
class ServiceInvoiceRoute extends _i32.PageRouteInfo<void> {
  const ServiceInvoiceRoute()
      : super(ServiceInvoiceRoute.name, path: '/service-invoice-page');

  static const String name = 'ServiceInvoiceRoute';
}

/// generated route for
/// [_i5.InvoicePaymentPage]
class InvoicePaymentRoute extends _i32.PageRouteInfo<void> {
  const InvoicePaymentRoute()
      : super(InvoicePaymentRoute.name, path: '/invoice-payment-page');

  static const String name = 'InvoicePaymentRoute';
}

/// generated route for
/// [_i6.ReviewRepairmanPage]
class ReviewRepairmanRoute extends _i32.PageRouteInfo<void> {
  const ReviewRepairmanRoute()
      : super(ReviewRepairmanRoute.name, path: '/review-repairman-page');

  static const String name = 'ReviewRepairmanRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i32.PageRouteInfo<HomeRouteArgs> {
  HomeRoute(
      {_i33.Key? key,
      required _i35.AppUser user,
      List<_i32.PageRouteInfo>? children})
      : super(HomeRoute.name,
            path: '/home-page',
            args: HomeRouteArgs(key: key, user: user),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, required this.user});

  final _i33.Key? key;

  final _i35.AppUser user;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i8.HistoryConsumerDetailPage]
class HistoryConsumerDetailRoute extends _i32.PageRouteInfo<void> {
  const HistoryConsumerDetailRoute()
      : super(HistoryConsumerDetailRoute.name,
            path: '/history-consumer-detail-page');

  static const String name = 'HistoryConsumerDetailRoute';
}

/// generated route for
/// [_i9.PaymentPage]
class PaymentRoute extends _i32.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute(
      {_i33.Key? key,
      required _i36.UserModel user,
      required _i35.AppUser model})
      : super(PaymentRoute.name,
            path: '/payment-page',
            args: PaymentRouteArgs(key: key, user: user, model: model));

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs({this.key, required this.user, required this.model});

  final _i33.Key? key;

  final _i36.UserModel user;

  final _i35.AppUser model;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, user: $user, model: $model}';
  }
}

/// generated route for
/// [_i10.TestPage]
class TestRoute extends _i32.PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i11.UpdateProfilePage]
class UpdateProfileRoute extends _i32.PageRouteInfo<UpdateProfileRouteArgs> {
  UpdateProfileRoute(
      {_i33.Key? key,
      required _i36.UserModel user,
      required _i35.AppUser model})
      : super(UpdateProfileRoute.name,
            path: '/update-profile-page',
            args: UpdateProfileRouteArgs(key: key, user: user, model: model));

  static const String name = 'UpdateProfileRoute';
}

class UpdateProfileRouteArgs {
  const UpdateProfileRouteArgs(
      {this.key, required this.user, required this.model});

  final _i33.Key? key;

  final _i36.UserModel user;

  final _i35.AppUser model;

  @override
  String toString() {
    return 'UpdateProfileRouteArgs{key: $key, user: $user, model: $model}';
  }
}

/// generated route for
/// [_i12.LoginPage]
class LoginRoute extends _i32.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i13.OnboardingPage]
class OnboardingRoute extends _i32.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i14.OTPPage]
class OTPRoute extends _i32.PageRouteInfo<OTPRouteArgs> {
  OTPRoute(
      {required String phoneNumber,
      required _i37.Completer<dynamic> completer,
      _i33.Key? key})
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

  final _i37.Completer<dynamic> completer;

  final _i33.Key? key;

  @override
  String toString() {
    return 'OTPRouteArgs{phoneNumber: $phoneNumber, completer: $completer, key: $key}';
  }
}

/// generated route for
/// [_i15.Signup6Page]
class Signup6Route extends _i32.PageRouteInfo<Signup6RouteArgs> {
  Signup6Route(
      {required _i37.Completer<_i35.AppUser> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i33.Key? key})
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

  final _i37.Completer<_i35.AppUser> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i33.Key? key;

  @override
  String toString() {
    return 'Signup6RouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i16.ChooseServicePage]
class ChooseServiceRoute extends _i32.PageRouteInfo<void> {
  const ChooseServiceRoute()
      : super(ChooseServiceRoute.name, path: '/choose-service-page');

  static const String name = 'ChooseServiceRoute';
}

/// generated route for
/// [_i17.NewServiceRequestPage]
class NewServiceRequestRoute extends _i32.PageRouteInfo<void> {
  const NewServiceRequestRoute()
      : super(NewServiceRequestRoute.name, path: '/new-service-request-page');

  static const String name = 'NewServiceRequestRoute';
}

/// generated route for
/// [_i18.ServiceDetailsPage]
class ServiceDetailsRoute extends _i32.PageRouteInfo<ServiceDetailsRouteArgs> {
  ServiceDetailsRoute({_i33.Key? key, required _i34.ServiceData serviceData})
      : super(ServiceDetailsRoute.name,
            path: '/service-details-page',
            args: ServiceDetailsRouteArgs(key: key, serviceData: serviceData));

  static const String name = 'ServiceDetailsRoute';
}

class ServiceDetailsRouteArgs {
  const ServiceDetailsRouteArgs({this.key, required this.serviceData});

  final _i33.Key? key;

  final _i34.ServiceData serviceData;

  @override
  String toString() {
    return 'ServiceDetailsRouteArgs{key: $key, serviceData: $serviceData}';
  }
}

/// generated route for
/// [_i19.ChooseProductPage]
class ChooseProductRoute extends _i32.PageRouteInfo<void> {
  const ChooseProductRoute()
      : super(ChooseProductRoute.name, path: '/choose-product-page');

  static const String name = 'ChooseProductRoute';
}

/// generated route for
/// [_i20.ListRepairerPage]
class ListRepairerRoute extends _i32.PageRouteInfo<void> {
  const ListRepairerRoute()
      : super(ListRepairerRoute.name, path: '/list-repairer-page');

  static const String name = 'ListRepairerRoute';
}

/// generated route for
/// [_i21.RepairerProfilePage]
class RepairerProfileRoute
    extends _i32.PageRouteInfo<RepairerProfileRouteArgs> {
  RepairerProfileRoute({required String providerID, _i33.Key? key})
      : super(RepairerProfileRoute.name,
            path: '/repairer-profile-page',
            args: RepairerProfileRouteArgs(providerID: providerID, key: key));

  static const String name = 'RepairerProfileRoute';
}

class RepairerProfileRouteArgs {
  const RepairerProfileRouteArgs({required this.providerID, this.key});

  final String providerID;

  final _i33.Key? key;

  @override
  String toString() {
    return 'RepairerProfileRouteArgs{providerID: $providerID, key: $key}';
  }
}

/// generated route for
/// [_i22.OverViewOrderPage]
class OverViewOrderRoute extends _i32.PageRouteInfo<OverViewOrderRouteArgs> {
  OverViewOrderRoute({_i33.Key? key, required String providerID})
      : super(OverViewOrderRoute.name,
            path: '/over-view-order-page',
            args: OverViewOrderRouteArgs(key: key, providerID: providerID));

  static const String name = 'OverViewOrderRoute';
}

class OverViewOrderRouteArgs {
  const OverViewOrderRouteArgs({this.key, required this.providerID});

  final _i33.Key? key;

  final String providerID;

  @override
  String toString() {
    return 'OverViewOrderRouteArgs{key: $key, providerID: $providerID}';
  }
}

/// generated route for
/// [_i23.FAQsPage]
class FAQsRoute extends _i32.PageRouteInfo<void> {
  const FAQsRoute() : super(FAQsRoute.name, path: '/f-aqs-page');

  static const String name = 'FAQsRoute';
}

/// generated route for
/// [_i24.FAQsItemOTPPage]
class FAQsItemOTPRoute extends _i32.PageRouteInfo<void> {
  const FAQsItemOTPRoute()
      : super(FAQsItemOTPRoute.name, path: '/f-aqs-item-ot-pPage');

  static const String name = 'FAQsItemOTPRoute';
}

/// generated route for
/// [_i25.AboutUsPage]
class AboutUsRoute extends _i32.PageRouteInfo<void> {
  const AboutUsRoute() : super(AboutUsRoute.name, path: '/about-us-page');

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i26.TermsPrivacyPage]
class TermsPrivacyRoute extends _i32.PageRouteInfo<void> {
  const TermsPrivacyRoute()
      : super(TermsPrivacyRoute.name, path: '/terms-privacy-page');

  static const String name = 'TermsPrivacyRoute';
}

/// generated route for
/// [_i27.LoginEnterPhonePage]
class LoginEnterPhoneRoute
    extends _i32.PageRouteInfo<LoginEnterPhoneRouteArgs> {
  LoginEnterPhoneRoute(
      {required _i37.Completer<dynamic> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i33.Key? key})
      : super(LoginEnterPhoneRoute.name,
            path: '/login-enter-phone-page',
            args: LoginEnterPhoneRouteArgs(
                completer: completer,
                phoneNumber: phoneNumber,
                photoURL: photoURL,
                uid: uid,
                email: email,
                key: key));

  static const String name = 'LoginEnterPhoneRoute';
}

class LoginEnterPhoneRouteArgs {
  const LoginEnterPhoneRouteArgs(
      {required this.completer,
      required this.phoneNumber,
      required this.photoURL,
      required this.uid,
      required this.email,
      this.key});

  final _i37.Completer<dynamic> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i33.Key? key;

  @override
  String toString() {
    return 'LoginEnterPhoneRouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i28.HomeBodyPage]
class HomeBodyRoute extends _i32.PageRouteInfo<void> {
  const HomeBodyRoute() : super(HomeBodyRoute.name, path: 'home-body-page');

  static const String name = 'HomeBodyRoute';
}

/// generated route for
/// [_i29.HistoryConsumerPage]
class HistoryConsumerRoute extends _i32.PageRouteInfo<void> {
  const HistoryConsumerRoute()
      : super(HistoryConsumerRoute.name, path: 'history-consumer-page');

  static const String name = 'HistoryConsumerRoute';
}

/// generated route for
/// [_i30.NotificationConsumerPage]
class NotificationConsumerRoute extends _i32.PageRouteInfo<void> {
  const NotificationConsumerRoute()
      : super(NotificationConsumerRoute.name,
            path: 'notification-consumer-page');

  static const String name = 'NotificationConsumerRoute';
}

/// generated route for
/// [_i31.AccountPage]
class AccountRoute extends _i32.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account-page');

  static const String name = 'AccountRoute';
}
