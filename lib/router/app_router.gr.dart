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
    HomeRoute.name: (routeData) {
      return AdaptivePage<void>(routeData: routeData, child: const HomePage());
    },
    UpdateProfileRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const UpdateProfilePage());
    },
    HomeBodyRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const HomeBodyPage());
    },
    TestRoute.name: (routeData) {
      return AdaptivePage<void>(routeData: routeData, child: const TestPage());
    },
    AccountRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const AccountPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/home-page', children: [
          RouteConfig(HomeBodyRoute.name,
              path: 'home-body-page', parent: HomeRoute.name),
          RouteConfig(AccountRoute.name,
              path: 'account-page', parent: HomeRoute.name)
        ]),
        RouteConfig(UpdateProfileRoute.name, path: '/')
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(TestRoute.name, path: '/test-page'),
        RouteConfig(OnboardingRoute.name, path: '/onboarding-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [UpdateProfilePage]
class UpdateProfileRoute extends PageRouteInfo<void> {
  const UpdateProfileRoute() : super(UpdateProfileRoute.name, path: '/');

  static const String name = 'UpdateProfileRoute';
}

/// generated route for
/// [HomeBodyPage]
class HomeBodyRoute extends PageRouteInfo<void> {
  const HomeBodyRoute() : super(HomeBodyRoute.name, path: 'home-body-page');

  static const String name = 'HomeBodyRoute';
}

/// generated route for
/// [TestPage]
class TestRoute extends PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: 'test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account-page');
    static const String name = 'AccountRoute';
}

/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');
      static const String name = 'OnboardingRoute';
}