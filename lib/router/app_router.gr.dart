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
import 'dart:async' as _i40;

import 'package:auto_route/auto_route.dart' as _i35;
import 'package:dartz/dartz.dart' as _i43;
import 'package:flutter/material.dart' as _i36;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i44;
import 'package:revup/account/model/user_model.dart' as _i41;
import 'package:revup/account/view/account_page.u.dart' as _i34;
import 'package:revup/add_message/view/add_message_page.dart' as _i24;
import 'package:revup/find_nearby/view/find_nearby_page.dart' as _i20;
import 'package:revup/find_provider/models/provider_data.u.dart' as _i45;
import 'package:revup/find_provider/view/list_repairer_page.u.dart' as _i22;
import 'package:revup/guide-support/view/about_us_page.u.dart' as _i28;
import 'package:revup/guide-support/view/faqs_page.u.dart' as _i26;
import 'package:revup/guide-support/view/terms_privacy_page.u.dart' as _i29;
import 'package:revup/guide-support/widgets/faqs_item_otp.u.dart' as _i27;
import 'package:revup/history_consumer/view/history_consumer_page.u.dart'
    as _i32;
import 'package:revup/history_consumer/view/history_detail_consumer_page.u.dart'
    as _i8;
import 'package:revup/home/view/home_page.u.dart' as _i7;
import 'package:revup/home/widgets/home_body_page.u.dart' as _i31;
import 'package:revup/invoice/models/provider_data.dart' as _i38;
import 'package:revup/invoice/models/service_data.dart' as _i39;
import 'package:revup/invoice/view/service_invoice_page.u.dart' as _i4;
import 'package:revup/invoice_payment/view/invoice_payment_page.u.dart' as _i5;
import 'package:revup/login/login_enter_phone/view/login_enter_phone_number_page.u.dart'
    as _i30;
import 'package:revup/login/view/login_page.u.dart' as _i12;
import 'package:revup/notification_consumer/view/notification_consumer_page.u.dart'
    as _i33;
import 'package:revup/onboarding/view/onboarding_page.dart' as _i13;
import 'package:revup/order-sevice/view/order_detail_page.u.dart' as _i2;
import 'package:revup/order-sevice/view/repair_status_page.u.dart' as _i3;
import 'package:revup/order/order_overview/view/overview_order_page.u.dart'
    as _i25;
import 'package:revup/otp/view/otp_page.u.dart' as _i14;
import 'package:revup/payment/view/payment_page.u.dart' as _i9;
import 'package:revup/profile/view/signup6_page.u.dart' as _i15;
import 'package:revup/profile/view/update_profile_page.u.dart' as _i11;
import 'package:revup/repairer_profile/models/service_data.u.dart' as _i42;
import 'package:revup/repairer_profile/view/repairer_profile_page.u.dart'
    as _i23;
import 'package:revup/request_provider/view/request_provider_page.dart' as _i21;
import 'package:revup/review-repairman/view/review_repairman_page.u.dart'
    as _i6;
import 'package:revup/service/choose_product/view/choose_product_page.dart'
    as _i19;
import 'package:revup/service/choose_service/view/choose_service_page.dart'
    as _i16;
import 'package:revup/service/new_service/view/new_service_request_page.dart'
    as _i17;
import 'package:revup/service/service-details/view/service_detail_page.dart'
    as _i18;
import 'package:revup/splash/splash.dart' as _i1;
import 'package:revup/test/test.dart' as _i10;
import 'package:revup_core/core.dart' as _i37;

class AppRouter extends _i35.RootStackRouter {
  AppRouter([_i36.GlobalKey<_i36.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i35.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    OrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailRouteArgs>(
          orElse: () => const OrderDetailRouteArgs());
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: _i2.OrderDetailPage(key: args.key));
    },
    RepairStatusRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i3.RepairStatusPage());
    },
    ServiceInvoiceRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceInvoiceRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i4.ServiceInvoicePage(args.providerID, key: args.key));
    },
    InvoicePaymentRoute.name: (routeData) {
      final args = routeData.argsAs<InvoicePaymentRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i5.InvoicePaymentPage(
              args.providerData, args.serviceData, args.total,
              key: args.key));
    },
    ReviewRepairmanRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewRepairmanRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i6.ReviewRepairmanPage(args.providerData, args.completer,
              key: args.key));
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: _i7.HomePage(key: args.key));
    },
    HistoryConsumerDetailRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i8.HistoryConsumerDetailPage());
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i9.PaymentPage(
              key: args.key, user: args.user, completer: args.completer));
    },
    TestRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i10.TestPage());
    },
    UpdateProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfileRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i11.UpdateProfilePage(
              key: args.key, user: args.user, model: args.model));
    },
    LoginRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i12.LoginPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i13.OnboardingPage());
    },
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i14.OTPPage(args.phoneNumber, args.completer, key: args.key));
    },
    Signup6Route.name: (routeData) {
      final args = routeData.argsAs<Signup6RouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i15.Signup6Page(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    ChooseServiceRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseServiceRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i16.ChooseServicePage(
              key: args.key, providerId: args.providerId));
    },
    NewServiceRequestRoute.name: (routeData) {
      return _i35.AdaptivePage<_i37.OptionalService>(
          routeData: routeData, child: const _i17.NewServiceRequestPage());
    },
    ServiceDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i18.ServiceDetailPage(
              key: args.key,
              providerId: args.providerId,
              serviceData: args.serviceData,
              categories: args.categories));
    },
    ChooseProductRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseProductRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i19.ChooseProductPage(
              key: args.key,
              serviceData: args.serviceData,
              categories: args.categories,
              providerId: args.providerId));
    },
    FindNearbyRoute.name: (routeData) {
      final args = routeData.argsAs<FindNearbyRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i20.FindNearbyPage(
              key: args.key, currentLocation: args.currentLocation));
    },
    RequestProviderRoute.name: (routeData) {
      final args = routeData.argsAs<RequestProviderRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i21.RequestProviderPage(
              key: args.key, providerData: args.providerData));
    },
    ListRepairerRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i22.ListRepairerPage());
    },
    RepairerProfileRoute.name: (routeData) {
      final args = routeData.argsAs<RepairerProfileRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i23.RepairerProfilePage(
              key: args.key, providerData: args.providerData));
    },
    AddMessageRoute.name: (routeData) {
      final args = routeData.argsAs<AddMessageRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i24.AddMessagePage(
              key: args.key,
              providerData: args.providerData,
              movingFee: args.movingFee));
    },
    OverViewOrderRoute.name: (routeData) {
      final args = routeData.argsAs<OverViewOrderRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i25.OverViewOrderPage(
              key: args.key, providerID: args.providerID));
    },
    FAQsRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i26.FAQsPage());
    },
    FAQsItemOTPRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i27.FAQsItemOTPPage());
    },
    AboutUsRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i28.AboutUsPage());
    },
    TermsPrivacyRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i29.TermsPrivacyPage());
    },
    LoginEnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<LoginEnterPhoneRouteArgs>();
      return _i35.AdaptivePage<void>(
          routeData: routeData,
          child: _i30.LoginEnterPhonePage(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    HomeBodyRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i31.HomeBodyPage());
    },
    HistoryConsumerRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i32.HistoryConsumerPage());
    },
    NotificationConsumerRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i33.NotificationConsumerPage());
    },
    AccountRoute.name: (routeData) {
      return _i35.AdaptivePage<void>(
          routeData: routeData, child: const _i34.AccountPage());
    }
  };

  @override
  List<_i35.RouteConfig> get routes => [
        _i35.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i35.RouteConfig(OrderDetailRoute.name, path: '/order-detail-page'),
        _i35.RouteConfig(RepairStatusRoute.name, path: '/repair-status-page'),
        _i35.RouteConfig(ServiceInvoiceRoute.name,
            path: '/service-invoice-page'),
        _i35.RouteConfig(InvoicePaymentRoute.name,
            path: '/invoice-payment-page'),
        _i35.RouteConfig(ReviewRepairmanRoute.name,
            path: '/review-repairman-page'),
        _i35.RouteConfig(HomeRoute.name, path: '/', children: [
          _i35.RouteConfig(HomeBodyRoute.name,
              path: 'home-body-page', parent: HomeRoute.name),
          _i35.RouteConfig(HistoryConsumerRoute.name,
              path: 'history-consumer-page', parent: HomeRoute.name),
          _i35.RouteConfig(NotificationConsumerRoute.name,
              path: 'notification-consumer-page', parent: HomeRoute.name),
          _i35.RouteConfig(AccountRoute.name,
              path: 'account-page', parent: HomeRoute.name)
        ]),
        _i35.RouteConfig(HistoryConsumerDetailRoute.name,
            path: '/history-consumer-detail-page'),
        _i35.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i35.RouteConfig(TestRoute.name, path: '/test-page'),
        _i35.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i35.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i35.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i35.RouteConfig(OTPRoute.name, path: '/o-tp-page'),
        _i35.RouteConfig(Signup6Route.name, path: '/signup6-page'),
        _i35.RouteConfig(ChooseServiceRoute.name, path: '/choose-service-page'),
        _i35.RouteConfig(NewServiceRequestRoute.name,
            path: '/new-service-request-page'),
        _i35.RouteConfig(ServiceDetailRoute.name, path: '/service-detail-page'),
        _i35.RouteConfig(ChooseProductRoute.name, path: '/choose-product-page'),
        _i35.RouteConfig(FindNearbyRoute.name, path: '/find-nearby-page'),
        _i35.RouteConfig(RequestProviderRoute.name,
            path: '/request-provider-page'),
        _i35.RouteConfig(ListRepairerRoute.name, path: '/list-repairer-page'),
        _i35.RouteConfig(RepairerProfileRoute.name,
            path: '/repairer-profile-page'),
        _i35.RouteConfig(AddMessageRoute.name, path: '/add-message-page'),
        _i35.RouteConfig(OverViewOrderRoute.name,
            path: '/over-view-order-page'),
        _i35.RouteConfig(FAQsRoute.name, path: '/f-aqs-page'),
        _i35.RouteConfig(FAQsItemOTPRoute.name, path: '/f-aqs-item-ot-pPage'),
        _i35.RouteConfig(AboutUsRoute.name, path: '/about-us-page'),
        _i35.RouteConfig(TermsPrivacyRoute.name, path: '/terms-privacy-page'),
        _i35.RouteConfig(LoginEnterPhoneRoute.name,
            path: '/login-enter-phone-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i35.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.OrderDetailPage]
class OrderDetailRoute extends _i35.PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({_i36.Key? key})
      : super(OrderDetailRoute.name,
            path: '/order-detail-page', args: OrderDetailRouteArgs(key: key));

  static const String name = 'OrderDetailRoute';
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({this.key});

  final _i36.Key? key;

  @override
  String toString() {
    return 'OrderDetailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.RepairStatusPage]
class RepairStatusRoute extends _i35.PageRouteInfo<void> {
  const RepairStatusRoute()
      : super(RepairStatusRoute.name, path: '/repair-status-page');

  static const String name = 'RepairStatusRoute';
}

/// generated route for
/// [_i4.ServiceInvoicePage]
class ServiceInvoiceRoute extends _i35.PageRouteInfo<ServiceInvoiceRouteArgs> {
  ServiceInvoiceRoute({required String providerID, _i36.Key? key})
      : super(ServiceInvoiceRoute.name,
            path: '/service-invoice-page',
            args: ServiceInvoiceRouteArgs(providerID: providerID, key: key));

  static const String name = 'ServiceInvoiceRoute';
}

class ServiceInvoiceRouteArgs {
  const ServiceInvoiceRouteArgs({required this.providerID, this.key});

  final String providerID;

  final _i36.Key? key;

  @override
  String toString() {
    return 'ServiceInvoiceRouteArgs{providerID: $providerID, key: $key}';
  }
}

/// generated route for
/// [_i5.InvoicePaymentPage]
class InvoicePaymentRoute extends _i35.PageRouteInfo<InvoicePaymentRouteArgs> {
  InvoicePaymentRoute(
      {required _i38.ProviderData providerData,
      required List<_i39.ServiceData> serviceData,
      required int total,
      _i36.Key? key})
      : super(InvoicePaymentRoute.name,
            path: '/invoice-payment-page',
            args: InvoicePaymentRouteArgs(
                providerData: providerData,
                serviceData: serviceData,
                total: total,
                key: key));

  static const String name = 'InvoicePaymentRoute';
}

class InvoicePaymentRouteArgs {
  const InvoicePaymentRouteArgs(
      {required this.providerData,
      required this.serviceData,
      required this.total,
      this.key});

  final _i38.ProviderData providerData;

  final List<_i39.ServiceData> serviceData;

  final int total;

  final _i36.Key? key;

  @override
  String toString() {
    return 'InvoicePaymentRouteArgs{providerData: $providerData, serviceData: $serviceData, total: $total, key: $key}';
  }
}

/// generated route for
/// [_i6.ReviewRepairmanPage]
class ReviewRepairmanRoute
    extends _i35.PageRouteInfo<ReviewRepairmanRouteArgs> {
  ReviewRepairmanRoute(
      {required _i38.ProviderData providerData,
      required _i40.Completer<dynamic> completer,
      _i36.Key? key})
      : super(ReviewRepairmanRoute.name,
            path: '/review-repairman-page',
            args: ReviewRepairmanRouteArgs(
                providerData: providerData, completer: completer, key: key));

  static const String name = 'ReviewRepairmanRoute';
}

class ReviewRepairmanRouteArgs {
  const ReviewRepairmanRouteArgs(
      {required this.providerData, required this.completer, this.key});

  final _i38.ProviderData providerData;

  final _i40.Completer<dynamic> completer;

  final _i36.Key? key;

  @override
  String toString() {
    return 'ReviewRepairmanRouteArgs{providerData: $providerData, completer: $completer, key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i35.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i36.Key? key, List<_i35.PageRouteInfo>? children})
      : super(HomeRoute.name,
            path: '/',
            args: HomeRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i36.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.HistoryConsumerDetailPage]
class HistoryConsumerDetailRoute extends _i35.PageRouteInfo<void> {
  const HistoryConsumerDetailRoute()
      : super(HistoryConsumerDetailRoute.name,
            path: '/history-consumer-detail-page');

  static const String name = 'HistoryConsumerDetailRoute';
}

/// generated route for
/// [_i9.PaymentPage]
class PaymentRoute extends _i35.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute(
      {_i36.Key? key,
      required _i37.AppUser user,
      _i40.Completer<dynamic>? completer})
      : super(PaymentRoute.name,
            path: '/payment-page',
            args: PaymentRouteArgs(key: key, user: user, completer: completer));

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs({this.key, required this.user, this.completer});

  final _i36.Key? key;

  final _i37.AppUser user;

  final _i40.Completer<dynamic>? completer;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, user: $user, completer: $completer}';
  }
}

/// generated route for
/// [_i10.TestPage]
class TestRoute extends _i35.PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i11.UpdateProfilePage]
class UpdateProfileRoute extends _i35.PageRouteInfo<UpdateProfileRouteArgs> {
  UpdateProfileRoute(
      {_i36.Key? key,
      required _i41.UserModel user,
      required _i37.AppUser model})
      : super(UpdateProfileRoute.name,
            path: '/update-profile-page',
            args: UpdateProfileRouteArgs(key: key, user: user, model: model));

  static const String name = 'UpdateProfileRoute';
}

class UpdateProfileRouteArgs {
  const UpdateProfileRouteArgs(
      {this.key, required this.user, required this.model});

  final _i36.Key? key;

  final _i41.UserModel user;

  final _i37.AppUser model;

  @override
  String toString() {
    return 'UpdateProfileRouteArgs{key: $key, user: $user, model: $model}';
  }
}

/// generated route for
/// [_i12.LoginPage]
class LoginRoute extends _i35.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i13.OnboardingPage]
class OnboardingRoute extends _i35.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i14.OTPPage]
class OTPRoute extends _i35.PageRouteInfo<OTPRouteArgs> {
  OTPRoute(
      {required String phoneNumber,
      required _i40.Completer<dynamic> completer,
      _i36.Key? key})
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

  final _i40.Completer<dynamic> completer;

  final _i36.Key? key;

  @override
  String toString() {
    return 'OTPRouteArgs{phoneNumber: $phoneNumber, completer: $completer, key: $key}';
  }
}

/// generated route for
/// [_i15.Signup6Page]
class Signup6Route extends _i35.PageRouteInfo<Signup6RouteArgs> {
  Signup6Route(
      {required _i40.Completer<_i37.AppUser> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i36.Key? key})
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

  final _i40.Completer<_i37.AppUser> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i36.Key? key;

  @override
  String toString() {
    return 'Signup6RouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i16.ChooseServicePage]
class ChooseServiceRoute extends _i35.PageRouteInfo<ChooseServiceRouteArgs> {
  ChooseServiceRoute({_i36.Key? key, required String providerId})
      : super(ChooseServiceRoute.name,
            path: '/choose-service-page',
            args: ChooseServiceRouteArgs(key: key, providerId: providerId));

  static const String name = 'ChooseServiceRoute';
}

class ChooseServiceRouteArgs {
  const ChooseServiceRouteArgs({this.key, required this.providerId});

  final _i36.Key? key;

  final String providerId;

  @override
  String toString() {
    return 'ChooseServiceRouteArgs{key: $key, providerId: $providerId}';
  }
}

/// generated route for
/// [_i17.NewServiceRequestPage]
class NewServiceRequestRoute extends _i35.PageRouteInfo<void> {
  const NewServiceRequestRoute()
      : super(NewServiceRequestRoute.name, path: '/new-service-request-page');

  static const String name = 'NewServiceRequestRoute';
}

/// generated route for
/// [_i18.ServiceDetailPage]
class ServiceDetailRoute extends _i35.PageRouteInfo<ServiceDetailRouteArgs> {
  ServiceDetailRoute(
      {_i36.Key? key,
      required String providerId,
      required _i42.ServiceData serviceData,
      required List<
              _i43.Tuple2<_i37.RepairCategory, _i43.IList<_i42.ServiceData>>>
          categories})
      : super(ServiceDetailRoute.name,
            path: '/service-detail-page',
            args: ServiceDetailRouteArgs(
                key: key,
                providerId: providerId,
                serviceData: serviceData,
                categories: categories));

  static const String name = 'ServiceDetailRoute';
}

class ServiceDetailRouteArgs {
  const ServiceDetailRouteArgs(
      {this.key,
      required this.providerId,
      required this.serviceData,
      required this.categories});

  final _i36.Key? key;

  final String providerId;

  final _i42.ServiceData serviceData;

  final List<_i43.Tuple2<_i37.RepairCategory, _i43.IList<_i42.ServiceData>>>
      categories;

  @override
  String toString() {
    return 'ServiceDetailRouteArgs{key: $key, providerId: $providerId, serviceData: $serviceData, categories: $categories}';
  }
}

/// generated route for
/// [_i19.ChooseProductPage]
class ChooseProductRoute extends _i35.PageRouteInfo<ChooseProductRouteArgs> {
  ChooseProductRoute(
      {_i36.Key? key,
      required _i42.ServiceData serviceData,
      required List<
              _i43.Tuple2<_i37.RepairCategory, _i43.IList<_i42.ServiceData>>>
          categories,
      required String providerId})
      : super(ChooseProductRoute.name,
            path: '/choose-product-page',
            args: ChooseProductRouteArgs(
                key: key,
                serviceData: serviceData,
                categories: categories,
                providerId: providerId));

  static const String name = 'ChooseProductRoute';
}

class ChooseProductRouteArgs {
  const ChooseProductRouteArgs(
      {this.key,
      required this.serviceData,
      required this.categories,
      required this.providerId});

  final _i36.Key? key;

  final _i42.ServiceData serviceData;

  final List<_i43.Tuple2<_i37.RepairCategory, _i43.IList<_i42.ServiceData>>>
      categories;

  final String providerId;

  @override
  String toString() {
    return 'ChooseProductRouteArgs{key: $key, serviceData: $serviceData, categories: $categories, providerId: $providerId}';
  }
}

/// generated route for
/// [_i20.FindNearbyPage]
class FindNearbyRoute extends _i35.PageRouteInfo<FindNearbyRouteArgs> {
  FindNearbyRoute({_i36.Key? key, required _i44.LatLng currentLocation})
      : super(FindNearbyRoute.name,
            path: '/find-nearby-page',
            args: FindNearbyRouteArgs(
                key: key, currentLocation: currentLocation));

  static const String name = 'FindNearbyRoute';
}

class FindNearbyRouteArgs {
  const FindNearbyRouteArgs({this.key, required this.currentLocation});

  final _i36.Key? key;

  final _i44.LatLng currentLocation;

  @override
  String toString() {
    return 'FindNearbyRouteArgs{key: $key, currentLocation: $currentLocation}';
  }
}

/// generated route for
/// [_i21.RequestProviderPage]
class RequestProviderRoute
    extends _i35.PageRouteInfo<RequestProviderRouteArgs> {
  RequestProviderRoute({_i36.Key? key, required _i45.ProviderData providerData})
      : super(RequestProviderRoute.name,
            path: '/request-provider-page',
            args:
                RequestProviderRouteArgs(key: key, providerData: providerData));

  static const String name = 'RequestProviderRoute';
}

class RequestProviderRouteArgs {
  const RequestProviderRouteArgs({this.key, required this.providerData});

  final _i36.Key? key;

  final _i45.ProviderData providerData;

  @override
  String toString() {
    return 'RequestProviderRouteArgs{key: $key, providerData: $providerData}';
  }
}

/// generated route for
/// [_i22.ListRepairerPage]
class ListRepairerRoute extends _i35.PageRouteInfo<void> {
  const ListRepairerRoute()
      : super(ListRepairerRoute.name, path: '/list-repairer-page');

  static const String name = 'ListRepairerRoute';
}

/// generated route for
/// [_i23.RepairerProfilePage]
class RepairerProfileRoute
    extends _i35.PageRouteInfo<RepairerProfileRouteArgs> {
  RepairerProfileRoute({_i36.Key? key, required _i45.ProviderData providerData})
      : super(RepairerProfileRoute.name,
            path: '/repairer-profile-page',
            args:
                RepairerProfileRouteArgs(key: key, providerData: providerData));

  static const String name = 'RepairerProfileRoute';
}

class RepairerProfileRouteArgs {
  const RepairerProfileRouteArgs({this.key, required this.providerData});

  final _i36.Key? key;

  final _i45.ProviderData providerData;

  @override
  String toString() {
    return 'RepairerProfileRouteArgs{key: $key, providerData: $providerData}';
  }
}

/// generated route for
/// [_i24.AddMessagePage]
class AddMessageRoute extends _i35.PageRouteInfo<AddMessageRouteArgs> {
  AddMessageRoute(
      {_i36.Key? key,
      required _i45.ProviderData providerData,
      required int movingFee})
      : super(AddMessageRoute.name,
            path: '/add-message-page',
            args: AddMessageRouteArgs(
                key: key, providerData: providerData, movingFee: movingFee));

  static const String name = 'AddMessageRoute';
}

class AddMessageRouteArgs {
  const AddMessageRouteArgs(
      {this.key, required this.providerData, required this.movingFee});

  final _i36.Key? key;

  final _i45.ProviderData providerData;

  final int movingFee;

  @override
  String toString() {
    return 'AddMessageRouteArgs{key: $key, providerData: $providerData, movingFee: $movingFee}';
  }
}

/// generated route for
/// [_i25.OverViewOrderPage]
class OverViewOrderRoute extends _i35.PageRouteInfo<OverViewOrderRouteArgs> {
  OverViewOrderRoute({_i36.Key? key, required String providerID})
      : super(OverViewOrderRoute.name,
            path: '/over-view-order-page',
            args: OverViewOrderRouteArgs(key: key, providerID: providerID));

  static const String name = 'OverViewOrderRoute';
}

class OverViewOrderRouteArgs {
  const OverViewOrderRouteArgs({this.key, required this.providerID});

  final _i36.Key? key;

  final String providerID;

  @override
  String toString() {
    return 'OverViewOrderRouteArgs{key: $key, providerID: $providerID}';
  }
}

/// generated route for
/// [_i26.FAQsPage]
class FAQsRoute extends _i35.PageRouteInfo<void> {
  const FAQsRoute() : super(FAQsRoute.name, path: '/f-aqs-page');

  static const String name = 'FAQsRoute';
}

/// generated route for
/// [_i27.FAQsItemOTPPage]
class FAQsItemOTPRoute extends _i35.PageRouteInfo<void> {
  const FAQsItemOTPRoute()
      : super(FAQsItemOTPRoute.name, path: '/f-aqs-item-ot-pPage');

  static const String name = 'FAQsItemOTPRoute';
}

/// generated route for
/// [_i28.AboutUsPage]
class AboutUsRoute extends _i35.PageRouteInfo<void> {
  const AboutUsRoute() : super(AboutUsRoute.name, path: '/about-us-page');

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i29.TermsPrivacyPage]
class TermsPrivacyRoute extends _i35.PageRouteInfo<void> {
  const TermsPrivacyRoute()
      : super(TermsPrivacyRoute.name, path: '/terms-privacy-page');

  static const String name = 'TermsPrivacyRoute';
}

/// generated route for
/// [_i30.LoginEnterPhonePage]
class LoginEnterPhoneRoute
    extends _i35.PageRouteInfo<LoginEnterPhoneRouteArgs> {
  LoginEnterPhoneRoute(
      {required _i40.Completer<dynamic> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i36.Key? key})
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

  final _i40.Completer<dynamic> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i36.Key? key;

  @override
  String toString() {
    return 'LoginEnterPhoneRouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i31.HomeBodyPage]
class HomeBodyRoute extends _i35.PageRouteInfo<void> {
  const HomeBodyRoute() : super(HomeBodyRoute.name, path: 'home-body-page');

  static const String name = 'HomeBodyRoute';
}

/// generated route for
/// [_i32.HistoryConsumerPage]
class HistoryConsumerRoute extends _i35.PageRouteInfo<void> {
  const HistoryConsumerRoute()
      : super(HistoryConsumerRoute.name, path: 'history-consumer-page');

  static const String name = 'HistoryConsumerRoute';
}

/// generated route for
/// [_i33.NotificationConsumerPage]
class NotificationConsumerRoute extends _i35.PageRouteInfo<void> {
  const NotificationConsumerRoute()
      : super(NotificationConsumerRoute.name,
            path: 'notification-consumer-page');

  static const String name = 'NotificationConsumerRoute';
}

/// generated route for
/// [_i34.AccountPage]
class AccountRoute extends _i35.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account-page');

  static const String name = 'AccountRoute';
}
