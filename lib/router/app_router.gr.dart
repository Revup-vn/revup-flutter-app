// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const SplashPage());
    },
    ServiceDetailRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ServiceDetailPage());
    },
    RepairStatusRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const RepairStatusPage());
    },
    ServiceInvoiceRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ServiceInvoicePage());
    },
    InvoicePaymentRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const InvoicePaymentPage());
    },
    ReviewRepairmanRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ReviewRepairmanPage());
    },
    TestRoute.name: (routeData) {
      return AdaptivePage<void>(routeData: routeData, child: const TestPage());
    },
    LoginRoute.name: (routeData) {
      return AdaptivePage<void>(routeData: routeData, child: const LoginPage());
    },
    OnboardingRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const OnboardingPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/splash-page'),
        RouteConfig(ServiceDetailRoute.name, path: '/service-detail-page'),
        RouteConfig(RepairStatusRoute.name, path: '/repair-status-page'),
        RouteConfig(ServiceInvoiceRoute.name, path: '/'),
        RouteConfig(InvoicePaymentRoute.name, path: '/invoice-payment-page'),
        RouteConfig(ReviewRepairmanRoute.name, path: '/review-repairman-page'),
        RouteConfig(TestRoute.name, path: '/test-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(OnboardingRoute.name, path: '/onboarding-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [ServiceDetailPage]
class ServiceDetailRoute extends PageRouteInfo<void> {
  const ServiceDetailRoute()
      : super(ServiceDetailRoute.name, path: '/service-detail-page');

  static const String name = 'ServiceDetailRoute';
}

/// generated route for
/// [RepairStatusPage]
class RepairStatusRoute extends PageRouteInfo<void> {
  const RepairStatusRoute()
      : super(RepairStatusRoute.name, path: '/repair-status-page');

  static const String name = 'RepairStatusRoute';
}

/// generated route for
/// [ServiceInvoicePage]
class ServiceInvoiceRoute extends PageRouteInfo<void> {
  const ServiceInvoiceRoute() : super(ServiceInvoiceRoute.name, path: '/');

  static const String name = 'ServiceInvoiceRoute';
}

/// generated route for
/// [InvoicePaymentPage]
class InvoicePaymentRoute extends PageRouteInfo<void> {
  const InvoicePaymentRoute()
      : super(InvoicePaymentRoute.name, path: '/invoice-payment-page');

  static const String name = 'InvoicePaymentRoute';
}

/// generated route for
/// [ReviewRepairmanPage]
class ReviewRepairmanRoute extends PageRouteInfo<void> {
  const ReviewRepairmanRoute()
      : super(ReviewRepairmanRoute.name, path: '/review-repairman-page');

  static const String name = 'ReviewRepairmanRoute';
}

/// generated route for
/// [TestPage]
class TestRoute extends PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}
