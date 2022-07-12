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
    PaymentRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const PaymentPage());
    },
    Signup6Route.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const Signup6Page());
    },
    UpdateProfileRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const UpdateProfilePage());
    },
    OnboardingRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const OnboardingPage());
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
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(HomeRoute.name, path: '/home-page', children: [
          RouteConfig(HomeBodyRoute.name,
              path: 'home-body-page', parent: HomeRoute.name),
          RouteConfig(TestRoute.name,
              path: 'test-page', parent: HomeRoute.name),
          RouteConfig(AccountRoute.name,
              path: 'account-page', parent: HomeRoute.name)
        ]),
        RouteConfig(PaymentRoute.name, path: '/payment-page'),
        RouteConfig(Signup6Route.name, path: '/signup6-page'),
        RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
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
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute() : super(PaymentRoute.name, path: '/payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [Signup6Page]
class Signup6Route extends PageRouteInfo<void> {
  const Signup6Route() : super(Signup6Route.name, path: '/signup6-page');

  static const String name = 'Signup6Route';
}

/// generated route for
/// [UpdateProfilePage]
class UpdateProfileRoute extends PageRouteInfo<void> {
  const UpdateProfileRoute()
      : super(UpdateProfileRoute.name, path: '/update-profile-page');

  static const String name = 'UpdateProfileRoute';
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
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
