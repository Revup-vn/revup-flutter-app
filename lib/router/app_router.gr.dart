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
    ListRepairerRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ListRepairerPage());
    },
    RepairerProfileRoute.name: (routeData) {
      final args = routeData.argsAs<RepairerProfileRouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: RepairerProfilePage(args.providerID, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/splash-page'),
        RouteConfig(TestRoute.name, path: '/test-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        RouteConfig(ListRepairerRoute.name, path: '/'),
        RouteConfig(RepairerProfileRoute.name, path: '/repairer-profile-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

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
/// [ListRepairerPage]
class ListRepairerRoute extends PageRouteInfo<void> {
  const ListRepairerRoute() : super(ListRepairerRoute.name, path: '/');

  static const String name = 'ListRepairerRoute';
}

/// generated route for
/// [RepairerProfilePage]
class RepairerProfileRoute extends PageRouteInfo<RepairerProfileRouteArgs> {
  RepairerProfileRoute({required String providerID, Key? key})
      : super(RepairerProfileRoute.name,
            path: '/repairer-profile-page',
            args: RepairerProfileRouteArgs(providerID: providerID, key: key));

  static const String name = 'RepairerProfileRoute';
}

class RepairerProfileRouteArgs {
  const RepairerProfileRouteArgs({required this.providerID, this.key});

  final String providerID;

  final Key? key;

  @override
  String toString() {
    return 'RepairerProfileRouteArgs{providerID: $providerID, key: $key}';
  }
}
