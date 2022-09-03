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
import 'dart:async' as _i48;

import 'package:auto_route/auto_route.dart' as _i42;
import 'package:dartz/dartz.dart' as _i50;
import 'package:flutter/material.dart' as _i43;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i51;
import 'package:revup/account/view/account_page.u.dart' as _i41;
import 'package:revup/activate/history/view/view.dart' as _i39;
import 'package:revup/activate/history_provider_detail/history_provider_detail.dart'
    as _i12;
import 'package:revup/add_message/view/add_message_page.u.dart' as _i26;
import 'package:revup/add_report/view/add_report_page.u.dart' as _i35;
import 'package:revup/change_language/view/change_language_page.dart' as _i7;
import 'package:revup/countdown/countdown.dart' as _i37;
import 'package:revup/guide-support/view/about_us_page.u.dart' as _i30;
import 'package:revup/guide-support/view/faqs_page.u.dart' as _i28;
import 'package:revup/guide-support/view/terms_privacy_page.u.dart' as _i31;
import 'package:revup/guide-support/widgets/faqs_item_otp.u.dart' as _i29;
import 'package:revup/h16_map_route/view/h16_map_route_page.dart' as _i34;
import 'package:revup/h1_find_nearby/view/find_nearby_page.u.dart' as _i23;
import 'package:revup/h22_invoice/models/service_data.dart' as _i46;
import 'package:revup/h22_invoice/view/service_invoice_page.u.dart' as _i4;
import 'package:revup/h23_invoice_payment/view/invoice_payment_page.u.dart'
    as _i5;
import 'package:revup/h26_review-repairman/view/review_repairman_page.u.dart'
    as _i6;
import 'package:revup/h2_find_provider/models/provider_data.u.dart' as _i45;
import 'package:revup/h2_find_provider/view/find_provider_page.dart' as _i36;
import 'package:revup/h6_request_provider/view/request_provider_page.dart'
    as _i24;
import 'package:revup/history_consumer/model/history_model.dart' as _i47;
import 'package:revup/history_consumer/view/history_detail_page.u.dart' as _i11;
import 'package:revup/home/view/home_page.u.dart' as _i10;
import 'package:revup/home/widgets/home_body_page.u.dart' as _i38;
import 'package:revup/login/login_enter_phone/view/login_enter_phone_number_page.u.dart'
    as _i32;
import 'package:revup/login/view/login_page.u.dart' as _i15;
import 'package:revup/notification_page/view/notification_page.u.dart' as _i40;
import 'package:revup/onboarding/view/onboarding_page.dart' as _i16;
import 'package:revup/order/h9_order_overview/view/overview_order_page.u.dart'
    as _i27;
import 'package:revup/order/order-sevice/view/order_detail_page.u.dart' as _i2;
import 'package:revup/order/order-sevice/view/repair_status_page.u.dart' as _i3;
import 'package:revup/otp/view/otp_page.u.dart' as _i17;
import 'package:revup/payment/view/payment_page.u.dart' as _i13;
import 'package:revup/permission_page/permission_page.u.dart' as _i33;
import 'package:revup/profile/view/update_profile_page.u.dart' as _i14;
import 'package:revup/repairer_profile/models/service_data.u.dart' as _i49;
import 'package:revup/repairer_profile/view/repairer_profile_page.u.dart'
    as _i25;
import 'package:revup/report/view/report_page.u.dart' as _i8;
import 'package:revup/service/choose_service/view/choose_service_page.u.dart'
    as _i19;
import 'package:revup/service/h11_choose_product/view/choose_product_page.u.dart'
    as _i22;
import 'package:revup/service/new_service/view/new_service_request_page.u.dart'
    as _i20;
import 'package:revup/service/service-details/view/service_detail_page.u.dart'
    as _i21;
import 'package:revup/signup/view/signup_page.u.dart' as _i18;
import 'package:revup/splash/splash.dart' as _i1;
import 'package:revup/test/test.dart' as _i9;
import 'package:revup_core/core.dart' as _i44;

class AppRouter extends _i42.RootStackRouter {
  AppRouter([_i43.GlobalKey<_i43.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i42.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    OrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailRouteArgs>(
          orElse: () => const OrderDetailRouteArgs());
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: _i2.OrderDetailPage(key: args.key));
    },
    RepairStatusRoute.name: (routeData) {
      final args = routeData.argsAs<RepairStatusRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i3.RepairStatusPage(args.recordId, key: args.key));
    },
    ServiceInvoiceRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceInvoiceRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child:
              _i4.ServiceInvoicePage(args.providerID, args.id, key: args.key));
    },
    InvoicePaymentRoute.name: (routeData) {
      final args = routeData.argsAs<InvoicePaymentRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i5.InvoicePaymentPage(args.providerData, args.serviceData,
              key: args.key));
    },
    ReviewRepairmanRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewRepairmanRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i6.ReviewRepairmanPage(args.providerId, args.repairId,
              key: args.key));
    },
    ChangeLanguageRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i7.ChangeLanguagePage());
    },
    ReportRoute.name: (routeData) {
      final args = routeData.argsAs<ReportRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: _i8.ReportPage(args.cid, key: args.key));
    },
    TestRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i9.TestPage());
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i10.HomePage(key: args.key, user: args.user),
          maintainState: false);
    },
    HistoryDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryDetailRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i11.HistoryDetailPage(
              key: args.key, historyModel: args.historyModel));
    },
    HistoryProviderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryProviderDetailRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i12.HistoryProviderDetailPage(args.rpID, key: args.key));
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i13.PaymentPage(
              key: args.key, user: args.user, completer: args.completer));
    },
    UpdateProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfileRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i14.UpdateProfilePage(key: args.key, user: args.user));
    },
    LoginRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i15.LoginPage());
    },
    OnboardingRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i16.OnboardingPage());
    },
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i17.OTPPage(args.phoneNumber, args.completer, key: args.key));
    },
    SignupRoute.name: (routeData) {
      final args = routeData.argsAs<SignupRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i18.SignupPage(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    ChooseServiceRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseServiceRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i19.ChooseServicePage(
              key: args.key,
              providerId: args.providerId,
              isSelectProduct: args.isSelectProduct,
              recordId: args.recordId,
              optionalService: args.optionalService),
          maintainState: false);
    },
    NewServiceRequestRoute.name: (routeData) {
      final args = routeData.argsAs<NewServiceRequestRouteArgs>();
      return _i42.AdaptivePage<_i44.OptionalService?>(
          routeData: routeData,
          child: _i20.NewServiceRequestPage(
              key: args.key,
              optionalService: args.optionalService,
              providerId: args.providerId,
              isSelectProduct: args.isSelectProduct));
    },
    ServiceDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i21.ServiceDetailPage(
              key: args.key,
              providerId: args.providerId,
              serviceData: args.serviceData,
              catAndSv: args.catAndSv));
    },
    ChooseProductRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseProductRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i22.ChooseProductPage(
              key: args.key,
              serviceData: args.serviceData,
              catAndSv: args.catAndSv,
              providerId: args.providerId,
              recordId: args.recordId));
    },
    FindNearbyRoute.name: (routeData) {
      final args = routeData.argsAs<FindNearbyRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i23.FindNearbyPage(
              key: args.key, currentLocation: args.currentLocation));
    },
    RequestProviderRoute.name: (routeData) {
      final args = routeData.argsAs<RequestProviderRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i24.RequestProviderPage(
              key: args.key,
              providerData: args.providerData,
              recordType: args.recordType));
    },
    RepairerProfileRoute.name: (routeData) {
      final args = routeData.argsAs<RepairerProfileRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i25.RepairerProfilePage(
              key: args.key, providerData: args.providerData));
    },
    AddMessageRoute.name: (routeData) {
      final args = routeData.argsAs<AddMessageRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i26.AddMessagePage(
              key: args.key,
              providerData: args.providerData,
              movingFee: args.movingFee));
    },
    OverViewOrderRoute.name: (routeData) {
      final args = routeData.argsAs<OverViewOrderRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i27.OverViewOrderPage(
              key: args.key,
              providerId: args.providerId,
              recordId: args.recordId),
          maintainState: false);
    },
    FAQsRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i28.FAQsPage());
    },
    FAQsItemOTPRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i29.FAQsItemOTPPage());
    },
    AboutUsRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i30.AboutUsPage());
    },
    TermsPrivacyRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i31.TermsPrivacyPage());
    },
    LoginEnterPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<LoginEnterPhoneRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i32.LoginEnterPhonePage(args.completer, args.phoneNumber,
              args.photoURL, args.uid, args.email,
              key: args.key));
    },
    PermissionRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i33.PermissionPage());
    },
    MapRouteRoute.name: (routeData) {
      final args = routeData.argsAs<MapRouteRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i34.MapRoutePage(key: args.key, providerId: args.providerId));
    },
    AddReportRoute.name: (routeData) {
      final args = routeData.argsAs<AddReportRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i35.AddReportPage(args.reportID, key: args.key));
    },
    FindProviderRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i36.FindProviderPage());
    },
    CountdownRoute.name: (routeData) {
      final args = routeData.argsAs<CountdownRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i37.CountdownPage(key: args.key, token: args.token));
    },
    HomeBodyRoute.name: (routeData) {
      final args = routeData.argsAs<HomeBodyRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i38.HomeBodyPage(key: args.key, user: args.user));
    },
    HistoryProviderRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryProviderRouteArgs>();
      return _i42.AdaptivePage<void>(
          routeData: routeData,
          child: _i39.HistoryProviderPage(args.cid, key: args.key),
          maintainState: false);
    },
    NotificationRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i40.NotificationPage());
    },
    AccountRoute.name: (routeData) {
      return _i42.AdaptivePage<void>(
          routeData: routeData, child: const _i41.AccountPage());
    }
  };

  @override
  List<_i42.RouteConfig> get routes => [
        _i42.RouteConfig(SplashRoute.name, path: '/'),
        _i42.RouteConfig(OrderDetailRoute.name, path: '/order-detail-page'),
        _i42.RouteConfig(RepairStatusRoute.name, path: '/repair-status-page'),
        _i42.RouteConfig(ServiceInvoiceRoute.name,
            path: '/service-invoice-page'),
        _i42.RouteConfig(InvoicePaymentRoute.name,
            path: '/invoice-payment-page'),
        _i42.RouteConfig(ReviewRepairmanRoute.name,
            path: '/review-repairman-page'),
        _i42.RouteConfig(ChangeLanguageRoute.name,
            path: '/change-language-page'),
        _i42.RouteConfig(ReportRoute.name, path: '/report-page'),
        _i42.RouteConfig(TestRoute.name, path: '/test-page'),
        _i42.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i42.RouteConfig(HomeBodyRoute.name,
              path: 'home-body-page', parent: HomeRoute.name),
          _i42.RouteConfig(HistoryProviderRoute.name,
              path: 'history-provider-page', parent: HomeRoute.name),
          _i42.RouteConfig(NotificationRoute.name,
              path: 'notification-page', parent: HomeRoute.name),
          _i42.RouteConfig(AccountRoute.name,
              path: 'account-page', parent: HomeRoute.name)
        ]),
        _i42.RouteConfig(HistoryDetailRoute.name, path: '/history-detail-page'),
        _i42.RouteConfig(HistoryProviderDetailRoute.name,
            path: '/history-provider-detail-page'),
        _i42.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i42.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i42.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i42.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i42.RouteConfig(OTPRoute.name, path: '/o-tp-page'),
        _i42.RouteConfig(SignupRoute.name, path: '/signup-page'),
        _i42.RouteConfig(ChooseServiceRoute.name, path: '/choose-service-page'),
        _i42.RouteConfig(NewServiceRequestRoute.name,
            path: '/new-service-request-page'),
        _i42.RouteConfig(ServiceDetailRoute.name, path: '/service-detail-page'),
        _i42.RouteConfig(ChooseProductRoute.name, path: '/choose-product-page'),
        _i42.RouteConfig(FindNearbyRoute.name, path: '/find-nearby-page'),
        _i42.RouteConfig(RequestProviderRoute.name,
            path: '/request-provider-page'),
        _i42.RouteConfig(RepairerProfileRoute.name,
            path: '/repairer-profile-page'),
        _i42.RouteConfig(AddMessageRoute.name, path: '/add-message-page'),
        _i42.RouteConfig(OverViewOrderRoute.name,
            path: '/over-view-order-page'),
        _i42.RouteConfig(FAQsRoute.name, path: '/f-aqs-page'),
        _i42.RouteConfig(FAQsItemOTPRoute.name, path: '/f-aqs-item-ot-pPage'),
        _i42.RouteConfig(AboutUsRoute.name, path: '/about-us-page'),
        _i42.RouteConfig(TermsPrivacyRoute.name, path: '/terms-privacy-page'),
        _i42.RouteConfig(LoginEnterPhoneRoute.name,
            path: '/login-enter-phone-page'),
        _i42.RouteConfig(PermissionRoute.name, path: '/permission-page'),
        _i42.RouteConfig(MapRouteRoute.name, path: '/map-route-page'),
        _i42.RouteConfig(AddReportRoute.name, path: '/add-report-page'),
        _i42.RouteConfig(FindProviderRoute.name, path: '/find-provider-page'),
        _i42.RouteConfig(CountdownRoute.name, path: '/countdown-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i42.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.OrderDetailPage]
class OrderDetailRoute extends _i42.PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({_i43.Key? key})
      : super(OrderDetailRoute.name,
            path: '/order-detail-page', args: OrderDetailRouteArgs(key: key));

  static const String name = 'OrderDetailRoute';
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({this.key});

  final _i43.Key? key;

  @override
  String toString() {
    return 'OrderDetailRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.RepairStatusPage]
class RepairStatusRoute extends _i42.PageRouteInfo<RepairStatusRouteArgs> {
  RepairStatusRoute({required String recordId, _i43.Key? key})
      : super(RepairStatusRoute.name,
            path: '/repair-status-page',
            args: RepairStatusRouteArgs(recordId: recordId, key: key));

  static const String name = 'RepairStatusRoute';
}

class RepairStatusRouteArgs {
  const RepairStatusRouteArgs({required this.recordId, this.key});

  final String recordId;

  final _i43.Key? key;

  @override
  String toString() {
    return 'RepairStatusRouteArgs{recordId: $recordId, key: $key}';
  }
}

/// generated route for
/// [_i4.ServiceInvoicePage]
class ServiceInvoiceRoute extends _i42.PageRouteInfo<ServiceInvoiceRouteArgs> {
  ServiceInvoiceRoute(
      {required String providerID, required String id, _i43.Key? key})
      : super(ServiceInvoiceRoute.name,
            path: '/service-invoice-page',
            args: ServiceInvoiceRouteArgs(
                providerID: providerID, id: id, key: key));

  static const String name = 'ServiceInvoiceRoute';
}

class ServiceInvoiceRouteArgs {
  const ServiceInvoiceRouteArgs(
      {required this.providerID, required this.id, this.key});

  final String providerID;

  final String id;

  final _i43.Key? key;

  @override
  String toString() {
    return 'ServiceInvoiceRouteArgs{providerID: $providerID, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i5.InvoicePaymentPage]
class InvoicePaymentRoute extends _i42.PageRouteInfo<InvoicePaymentRouteArgs> {
  InvoicePaymentRoute(
      {required _i45.ProviderData providerData,
      required List<_i46.ServiceData> serviceData,
      _i43.Key? key})
      : super(InvoicePaymentRoute.name,
            path: '/invoice-payment-page',
            args: InvoicePaymentRouteArgs(
                providerData: providerData,
                serviceData: serviceData,
                key: key));

  static const String name = 'InvoicePaymentRoute';
}

class InvoicePaymentRouteArgs {
  const InvoicePaymentRouteArgs(
      {required this.providerData, required this.serviceData, this.key});

  final _i45.ProviderData providerData;

  final List<_i46.ServiceData> serviceData;

  final _i43.Key? key;

  @override
  String toString() {
    return 'InvoicePaymentRouteArgs{providerData: $providerData, serviceData: $serviceData, key: $key}';
  }
}

/// generated route for
/// [_i6.ReviewRepairmanPage]
class ReviewRepairmanRoute
    extends _i42.PageRouteInfo<ReviewRepairmanRouteArgs> {
  ReviewRepairmanRoute(
      {required String providerId, required String repairId, _i43.Key? key})
      : super(ReviewRepairmanRoute.name,
            path: '/review-repairman-page',
            args: ReviewRepairmanRouteArgs(
                providerId: providerId, repairId: repairId, key: key));

  static const String name = 'ReviewRepairmanRoute';
}

class ReviewRepairmanRouteArgs {
  const ReviewRepairmanRouteArgs(
      {required this.providerId, required this.repairId, this.key});

  final String providerId;

  final String repairId;

  final _i43.Key? key;

  @override
  String toString() {
    return 'ReviewRepairmanRouteArgs{providerId: $providerId, repairId: $repairId, key: $key}';
  }
}

/// generated route for
/// [_i7.ChangeLanguagePage]
class ChangeLanguageRoute extends _i42.PageRouteInfo<void> {
  const ChangeLanguageRoute()
      : super(ChangeLanguageRoute.name, path: '/change-language-page');

  static const String name = 'ChangeLanguageRoute';
}

/// generated route for
/// [_i8.ReportPage]
class ReportRoute extends _i42.PageRouteInfo<ReportRouteArgs> {
  ReportRoute({required String cid, _i43.Key? key})
      : super(ReportRoute.name,
            path: '/report-page', args: ReportRouteArgs(cid: cid, key: key));

  static const String name = 'ReportRoute';
}

class ReportRouteArgs {
  const ReportRouteArgs({required this.cid, this.key});

  final String cid;

  final _i43.Key? key;

  @override
  String toString() {
    return 'ReportRouteArgs{cid: $cid, key: $key}';
  }
}

/// generated route for
/// [_i9.TestPage]
class TestRoute extends _i42.PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i10.HomePage]
class HomeRoute extends _i42.PageRouteInfo<HomeRouteArgs> {
  HomeRoute(
      {_i43.Key? key,
      required _i44.AppUser user,
      List<_i42.PageRouteInfo>? children})
      : super(HomeRoute.name,
            path: '/home-page',
            args: HomeRouteArgs(key: key, user: user),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, required this.user});

  final _i43.Key? key;

  final _i44.AppUser user;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i11.HistoryDetailPage]
class HistoryDetailRoute extends _i42.PageRouteInfo<HistoryDetailRouteArgs> {
  HistoryDetailRoute({_i43.Key? key, required _i47.HistoryModel historyModel})
      : super(HistoryDetailRoute.name,
            path: '/history-detail-page',
            args: HistoryDetailRouteArgs(key: key, historyModel: historyModel));

  static const String name = 'HistoryDetailRoute';
}

class HistoryDetailRouteArgs {
  const HistoryDetailRouteArgs({this.key, required this.historyModel});

  final _i43.Key? key;

  final _i47.HistoryModel historyModel;

  @override
  String toString() {
    return 'HistoryDetailRouteArgs{key: $key, historyModel: $historyModel}';
  }
}

/// generated route for
/// [_i12.HistoryProviderDetailPage]
class HistoryProviderDetailRoute
    extends _i42.PageRouteInfo<HistoryProviderDetailRouteArgs> {
  HistoryProviderDetailRoute({required String rpID, _i43.Key? key})
      : super(HistoryProviderDetailRoute.name,
            path: '/history-provider-detail-page',
            args: HistoryProviderDetailRouteArgs(rpID: rpID, key: key));

  static const String name = 'HistoryProviderDetailRoute';
}

class HistoryProviderDetailRouteArgs {
  const HistoryProviderDetailRouteArgs({required this.rpID, this.key});

  final String rpID;

  final _i43.Key? key;

  @override
  String toString() {
    return 'HistoryProviderDetailRouteArgs{rpID: $rpID, key: $key}';
  }
}

/// generated route for
/// [_i13.PaymentPage]
class PaymentRoute extends _i42.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute(
      {_i43.Key? key,
      required _i44.AppUser user,
      _i48.Completer<dynamic>? completer})
      : super(PaymentRoute.name,
            path: '/payment-page',
            args: PaymentRouteArgs(key: key, user: user, completer: completer));

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs({this.key, required this.user, this.completer});

  final _i43.Key? key;

  final _i44.AppUser user;

  final _i48.Completer<dynamic>? completer;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, user: $user, completer: $completer}';
  }
}

/// generated route for
/// [_i14.UpdateProfilePage]
class UpdateProfileRoute extends _i42.PageRouteInfo<UpdateProfileRouteArgs> {
  UpdateProfileRoute({_i43.Key? key, required _i44.AppUser user})
      : super(UpdateProfileRoute.name,
            path: '/update-profile-page',
            args: UpdateProfileRouteArgs(key: key, user: user));

  static const String name = 'UpdateProfileRoute';
}

class UpdateProfileRouteArgs {
  const UpdateProfileRouteArgs({this.key, required this.user});

  final _i43.Key? key;

  final _i44.AppUser user;

  @override
  String toString() {
    return 'UpdateProfileRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i15.LoginPage]
class LoginRoute extends _i42.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i16.OnboardingPage]
class OnboardingRoute extends _i42.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i17.OTPPage]
class OTPRoute extends _i42.PageRouteInfo<OTPRouteArgs> {
  OTPRoute(
      {required String phoneNumber,
      required _i48.Completer<String> completer,
      _i43.Key? key})
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

  final _i48.Completer<String> completer;

  final _i43.Key? key;

  @override
  String toString() {
    return 'OTPRouteArgs{phoneNumber: $phoneNumber, completer: $completer, key: $key}';
  }
}

/// generated route for
/// [_i18.SignupPage]
class SignupRoute extends _i42.PageRouteInfo<SignupRouteArgs> {
  SignupRoute(
      {required _i48.Completer<_i44.AppUser> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i43.Key? key})
      : super(SignupRoute.name,
            path: '/signup-page',
            args: SignupRouteArgs(
                completer: completer,
                phoneNumber: phoneNumber,
                photoURL: photoURL,
                uid: uid,
                email: email,
                key: key));

  static const String name = 'SignupRoute';
}

class SignupRouteArgs {
  const SignupRouteArgs(
      {required this.completer,
      required this.phoneNumber,
      required this.photoURL,
      required this.uid,
      required this.email,
      this.key});

  final _i48.Completer<_i44.AppUser> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i43.Key? key;

  @override
  String toString() {
    return 'SignupRouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i19.ChooseServicePage]
class ChooseServiceRoute extends _i42.PageRouteInfo<ChooseServiceRouteArgs> {
  ChooseServiceRoute(
      {_i43.Key? key,
      required String providerId,
      required bool isSelectProduct,
      String? recordId,
      required List<_i44.OptionalService> optionalService})
      : super(ChooseServiceRoute.name,
            path: '/choose-service-page',
            args: ChooseServiceRouteArgs(
                key: key,
                providerId: providerId,
                isSelectProduct: isSelectProduct,
                recordId: recordId,
                optionalService: optionalService));

  static const String name = 'ChooseServiceRoute';
}

class ChooseServiceRouteArgs {
  const ChooseServiceRouteArgs(
      {this.key,
      required this.providerId,
      required this.isSelectProduct,
      this.recordId,
      required this.optionalService});

  final _i43.Key? key;

  final String providerId;

  final bool isSelectProduct;

  final String? recordId;

  final List<_i44.OptionalService> optionalService;

  @override
  String toString() {
    return 'ChooseServiceRouteArgs{key: $key, providerId: $providerId, isSelectProduct: $isSelectProduct, recordId: $recordId, optionalService: $optionalService}';
  }
}

/// generated route for
/// [_i20.NewServiceRequestPage]
class NewServiceRequestRoute
    extends _i42.PageRouteInfo<NewServiceRequestRouteArgs> {
  NewServiceRequestRoute(
      {_i43.Key? key,
      required List<_i44.OptionalService> optionalService,
      required String providerId,
      required bool isSelectProduct})
      : super(NewServiceRequestRoute.name,
            path: '/new-service-request-page',
            args: NewServiceRequestRouteArgs(
                key: key,
                optionalService: optionalService,
                providerId: providerId,
                isSelectProduct: isSelectProduct));

  static const String name = 'NewServiceRequestRoute';
}

class NewServiceRequestRouteArgs {
  const NewServiceRequestRouteArgs(
      {this.key,
      required this.optionalService,
      required this.providerId,
      required this.isSelectProduct});

  final _i43.Key? key;

  final List<_i44.OptionalService> optionalService;

  final String providerId;

  final bool isSelectProduct;

  @override
  String toString() {
    return 'NewServiceRequestRouteArgs{key: $key, optionalService: $optionalService, providerId: $providerId, isSelectProduct: $isSelectProduct}';
  }
}

/// generated route for
/// [_i21.ServiceDetailPage]
class ServiceDetailRoute extends _i42.PageRouteInfo<ServiceDetailRouteArgs> {
  ServiceDetailRoute(
      {_i43.Key? key,
      required String providerId,
      required _i49.ServiceData serviceData,
      required _i50.Tuple2<_i44.RepairCategory, _i50.IList<_i49.ServiceData>>
          catAndSv})
      : super(ServiceDetailRoute.name,
            path: '/service-detail-page',
            args: ServiceDetailRouteArgs(
                key: key,
                providerId: providerId,
                serviceData: serviceData,
                catAndSv: catAndSv));

  static const String name = 'ServiceDetailRoute';
}

class ServiceDetailRouteArgs {
  const ServiceDetailRouteArgs(
      {this.key,
      required this.providerId,
      required this.serviceData,
      required this.catAndSv});

  final _i43.Key? key;

  final String providerId;

  final _i49.ServiceData serviceData;

  final _i50.Tuple2<_i44.RepairCategory, _i50.IList<_i49.ServiceData>> catAndSv;

  @override
  String toString() {
    return 'ServiceDetailRouteArgs{key: $key, providerId: $providerId, serviceData: $serviceData, catAndSv: $catAndSv}';
  }
}

/// generated route for
/// [_i22.ChooseProductPage]
class ChooseProductRoute extends _i42.PageRouteInfo<ChooseProductRouteArgs> {
  ChooseProductRoute(
      {_i43.Key? key,
      required _i49.ServiceData serviceData,
      required _i50.Tuple2<_i44.RepairCategory, _i50.IList<_i49.ServiceData>>
          catAndSv,
      required String providerId,
      required String recordId})
      : super(ChooseProductRoute.name,
            path: '/choose-product-page',
            args: ChooseProductRouteArgs(
                key: key,
                serviceData: serviceData,
                catAndSv: catAndSv,
                providerId: providerId,
                recordId: recordId));

  static const String name = 'ChooseProductRoute';
}

class ChooseProductRouteArgs {
  const ChooseProductRouteArgs(
      {this.key,
      required this.serviceData,
      required this.catAndSv,
      required this.providerId,
      required this.recordId});

  final _i43.Key? key;

  final _i49.ServiceData serviceData;

  final _i50.Tuple2<_i44.RepairCategory, _i50.IList<_i49.ServiceData>> catAndSv;

  final String providerId;

  final String recordId;

  @override
  String toString() {
    return 'ChooseProductRouteArgs{key: $key, serviceData: $serviceData, catAndSv: $catAndSv, providerId: $providerId, recordId: $recordId}';
  }
}

/// generated route for
/// [_i23.FindNearbyPage]
class FindNearbyRoute extends _i42.PageRouteInfo<FindNearbyRouteArgs> {
  FindNearbyRoute({_i43.Key? key, required _i51.LatLng currentLocation})
      : super(FindNearbyRoute.name,
            path: '/find-nearby-page',
            args: FindNearbyRouteArgs(
                key: key, currentLocation: currentLocation));

  static const String name = 'FindNearbyRoute';
}

class FindNearbyRouteArgs {
  const FindNearbyRouteArgs({this.key, required this.currentLocation});

  final _i43.Key? key;

  final _i51.LatLng currentLocation;

  @override
  String toString() {
    return 'FindNearbyRouteArgs{key: $key, currentLocation: $currentLocation}';
  }
}

/// generated route for
/// [_i24.RequestProviderPage]
class RequestProviderRoute
    extends _i42.PageRouteInfo<RequestProviderRouteArgs> {
  RequestProviderRoute(
      {_i43.Key? key,
      required _i45.ProviderData providerData,
      required String recordType})
      : super(RequestProviderRoute.name,
            path: '/request-provider-page',
            args: RequestProviderRouteArgs(
                key: key, providerData: providerData, recordType: recordType));

  static const String name = 'RequestProviderRoute';
}

class RequestProviderRouteArgs {
  const RequestProviderRouteArgs(
      {this.key, required this.providerData, required this.recordType});

  final _i43.Key? key;

  final _i45.ProviderData providerData;

  final String recordType;

  @override
  String toString() {
    return 'RequestProviderRouteArgs{key: $key, providerData: $providerData, recordType: $recordType}';
  }
}

/// generated route for
/// [_i25.RepairerProfilePage]
class RepairerProfileRoute
    extends _i42.PageRouteInfo<RepairerProfileRouteArgs> {
  RepairerProfileRoute({_i43.Key? key, required _i45.ProviderData providerData})
      : super(RepairerProfileRoute.name,
            path: '/repairer-profile-page',
            args:
                RepairerProfileRouteArgs(key: key, providerData: providerData));

  static const String name = 'RepairerProfileRoute';
}

class RepairerProfileRouteArgs {
  const RepairerProfileRouteArgs({this.key, required this.providerData});

  final _i43.Key? key;

  final _i45.ProviderData providerData;

  @override
  String toString() {
    return 'RepairerProfileRouteArgs{key: $key, providerData: $providerData}';
  }
}

/// generated route for
/// [_i26.AddMessagePage]
class AddMessageRoute extends _i42.PageRouteInfo<AddMessageRouteArgs> {
  AddMessageRoute(
      {_i43.Key? key,
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

  final _i43.Key? key;

  final _i45.ProviderData providerData;

  final int movingFee;

  @override
  String toString() {
    return 'AddMessageRouteArgs{key: $key, providerData: $providerData, movingFee: $movingFee}';
  }
}

/// generated route for
/// [_i27.OverViewOrderPage]
class OverViewOrderRoute extends _i42.PageRouteInfo<OverViewOrderRouteArgs> {
  OverViewOrderRoute(
      {_i43.Key? key, required String providerId, required String recordId})
      : super(OverViewOrderRoute.name,
            path: '/over-view-order-page',
            args: OverViewOrderRouteArgs(
                key: key, providerId: providerId, recordId: recordId));

  static const String name = 'OverViewOrderRoute';
}

class OverViewOrderRouteArgs {
  const OverViewOrderRouteArgs(
      {this.key, required this.providerId, required this.recordId});

  final _i43.Key? key;

  final String providerId;

  final String recordId;

  @override
  String toString() {
    return 'OverViewOrderRouteArgs{key: $key, providerId: $providerId, recordId: $recordId}';
  }
}

/// generated route for
/// [_i28.FAQsPage]
class FAQsRoute extends _i42.PageRouteInfo<void> {
  const FAQsRoute() : super(FAQsRoute.name, path: '/f-aqs-page');

  static const String name = 'FAQsRoute';
}

/// generated route for
/// [_i29.FAQsItemOTPPage]
class FAQsItemOTPRoute extends _i42.PageRouteInfo<void> {
  const FAQsItemOTPRoute()
      : super(FAQsItemOTPRoute.name, path: '/f-aqs-item-ot-pPage');

  static const String name = 'FAQsItemOTPRoute';
}

/// generated route for
/// [_i30.AboutUsPage]
class AboutUsRoute extends _i42.PageRouteInfo<void> {
  const AboutUsRoute() : super(AboutUsRoute.name, path: '/about-us-page');

  static const String name = 'AboutUsRoute';
}

/// generated route for
/// [_i31.TermsPrivacyPage]
class TermsPrivacyRoute extends _i42.PageRouteInfo<void> {
  const TermsPrivacyRoute()
      : super(TermsPrivacyRoute.name, path: '/terms-privacy-page');

  static const String name = 'TermsPrivacyRoute';
}

/// generated route for
/// [_i32.LoginEnterPhonePage]
class LoginEnterPhoneRoute
    extends _i42.PageRouteInfo<LoginEnterPhoneRouteArgs> {
  LoginEnterPhoneRoute(
      {required _i48.Completer<dynamic> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      required String email,
      _i43.Key? key})
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

  final _i48.Completer<dynamic> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final String email;

  final _i43.Key? key;

  @override
  String toString() {
    return 'LoginEnterPhoneRouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, email: $email, key: $key}';
  }
}

/// generated route for
/// [_i33.PermissionPage]
class PermissionRoute extends _i42.PageRouteInfo<void> {
  const PermissionRoute()
      : super(PermissionRoute.name, path: '/permission-page');

  static const String name = 'PermissionRoute';
}

/// generated route for
/// [_i34.MapRoutePage]
class MapRouteRoute extends _i42.PageRouteInfo<MapRouteRouteArgs> {
  MapRouteRoute({_i43.Key? key, required String providerId})
      : super(MapRouteRoute.name,
            path: '/map-route-page',
            args: MapRouteRouteArgs(key: key, providerId: providerId));

  static const String name = 'MapRouteRoute';
}

class MapRouteRouteArgs {
  const MapRouteRouteArgs({this.key, required this.providerId});

  final _i43.Key? key;

  final String providerId;

  @override
  String toString() {
    return 'MapRouteRouteArgs{key: $key, providerId: $providerId}';
  }
}

/// generated route for
/// [_i35.AddReportPage]
class AddReportRoute extends _i42.PageRouteInfo<AddReportRouteArgs> {
  AddReportRoute({required String reportID, _i43.Key? key})
      : super(AddReportRoute.name,
            path: '/add-report-page',
            args: AddReportRouteArgs(reportID: reportID, key: key));

  static const String name = 'AddReportRoute';
}

class AddReportRouteArgs {
  const AddReportRouteArgs({required this.reportID, this.key});

  final String reportID;

  final _i43.Key? key;

  @override
  String toString() {
    return 'AddReportRouteArgs{reportID: $reportID, key: $key}';
  }
}

/// generated route for
/// [_i36.FindProviderPage]
class FindProviderRoute extends _i42.PageRouteInfo<void> {
  const FindProviderRoute()
      : super(FindProviderRoute.name, path: '/find-provider-page');

  static const String name = 'FindProviderRoute';
}

/// generated route for
/// [_i37.CountdownPage]
class CountdownRoute extends _i42.PageRouteInfo<CountdownRouteArgs> {
  CountdownRoute({_i43.Key? key, required String token})
      : super(CountdownRoute.name,
            path: '/countdown-page',
            args: CountdownRouteArgs(key: key, token: token));

  static const String name = 'CountdownRoute';
}

class CountdownRouteArgs {
  const CountdownRouteArgs({this.key, required this.token});

  final _i43.Key? key;

  final String token;

  @override
  String toString() {
    return 'CountdownRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i38.HomeBodyPage]
class HomeBodyRoute extends _i42.PageRouteInfo<HomeBodyRouteArgs> {
  HomeBodyRoute({_i43.Key? key, required _i44.AppUser user})
      : super(HomeBodyRoute.name,
            path: 'home-body-page',
            args: HomeBodyRouteArgs(key: key, user: user));

  static const String name = 'HomeBodyRoute';
}

class HomeBodyRouteArgs {
  const HomeBodyRouteArgs({this.key, required this.user});

  final _i43.Key? key;

  final _i44.AppUser user;

  @override
  String toString() {
    return 'HomeBodyRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i39.HistoryProviderPage]
class HistoryProviderRoute
    extends _i42.PageRouteInfo<HistoryProviderRouteArgs> {
  HistoryProviderRoute({required String cid, _i43.Key? key})
      : super(HistoryProviderRoute.name,
            path: 'history-provider-page',
            args: HistoryProviderRouteArgs(cid: cid, key: key));

  static const String name = 'HistoryProviderRoute';
}

class HistoryProviderRouteArgs {
  const HistoryProviderRouteArgs({required this.cid, this.key});

  final String cid;

  final _i43.Key? key;

  @override
  String toString() {
    return 'HistoryProviderRouteArgs{cid: $cid, key: $key}';
  }
}

/// generated route for
/// [_i40.NotificationPage]
class NotificationRoute extends _i42.PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: 'notification-page');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i41.AccountPage]
class AccountRoute extends _i42.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account-page');

  static const String name = 'AccountRoute';
}
