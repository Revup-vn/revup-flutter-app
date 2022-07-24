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
    ServiceInvoiceRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ServiceInvoicePage());
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
        RouteConfig(ServiceInvoiceRoute.name, path: '/service-invoice-page'),
        RouteConfig(ReviewRepairmanRoute.name, path: '/'),
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
/// [ServiceInvoicePage]
class ServiceInvoiceRoute extends PageRouteInfo<void> {
  const ServiceInvoiceRoute()
      : super(ServiceInvoiceRoute.name, path: '/service-invoice-page');

  static const String name = 'ServiceInvoiceRoute';
}

/// generated route for
/// [ReviewRepairmanPage]
class ReviewRepairmanRoute extends PageRouteInfo<void> {
  const ReviewRepairmanRoute() : super(ReviewRepairmanRoute.name, path: '/');

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
