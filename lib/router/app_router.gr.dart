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
    TestRoute.name: (routeData) {
      return AdaptivePage<void>(routeData: routeData, child: const TestPage());
    },
    LoginRoute.name: (routeData) {
      return AdaptivePage<void>(routeData: routeData, child: const LoginPage());
    },
    OnboardingRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const OnboardingPage());
    },
    ChooseServiceRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ChooseServicePage());
    },
    NewServiceRequestRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const NewServiceRequestPage());
    },
    ServiceDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailsRouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child:
              ServiceDetailsPage(key: args.key, serviceData: args.serviceData));
    },
    ChooseProductRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ChooseProductPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(TestRoute.name, path: '/test-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        RouteConfig(ChooseServiceRoute.name, path: '/choose-service-page'),
        RouteConfig(NewServiceRequestRoute.name,
            path: '/new-service-request-page'),
        RouteConfig(ServiceDetailsRoute.name, path: '/service-details-page'),
        RouteConfig(ChooseProductRoute.name, path: '/choose-product-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
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

/// generated route for
/// [ChooseServicePage]
class ChooseServiceRoute extends PageRouteInfo<void> {
  const ChooseServiceRoute()
      : super(ChooseServiceRoute.name, path: '/choose-service-page');

  static const String name = 'ChooseServiceRoute';
}

/// generated route for
/// [NewServiceRequestPage]
class NewServiceRequestRoute extends PageRouteInfo<void> {
  const NewServiceRequestRoute()
      : super(NewServiceRequestRoute.name, path: '/new-service-request-page');

  static const String name = 'NewServiceRequestRoute';
}

/// generated route for
/// [ServiceDetailsPage]
class ServiceDetailsRoute extends PageRouteInfo<ServiceDetailsRouteArgs> {
  ServiceDetailsRoute({Key? key, required ServiceData serviceData})
      : super(ServiceDetailsRoute.name,
            path: '/service-details-page',
            args: ServiceDetailsRouteArgs(key: key, serviceData: serviceData));

  static const String name = 'ServiceDetailsRoute';
}

class ServiceDetailsRouteArgs {
  const ServiceDetailsRouteArgs({this.key, required this.serviceData});

  final Key? key;

  final ServiceData serviceData;

  @override
  String toString() {
    return 'ServiceDetailsRouteArgs{key: $key, serviceData: $serviceData}';
  }
}

/// generated route for
/// [ChooseProductPage]
class ChooseProductRoute extends PageRouteInfo<void> {
  const ChooseProductRoute()
      : super(ChooseProductRoute.name, path: '/choose-product-page');

  static const String name = 'ChooseProductRoute';
}
