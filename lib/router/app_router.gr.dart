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
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: OTPPage(args.phoneNumber, args.completer, key: args.key));
    },
    Signup6Route.name: (routeData) {
      final args = routeData.argsAs<Signup6RouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: Signup6Page(
              args.completer, args.phoneNumber, args.photoURL, args.uid,
              key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(TestRoute.name, path: '/test-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        RouteConfig(OTPRoute.name, path: '/o-tp-page'),
        RouteConfig(Signup6Route.name, path: '/signup6-page')
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
/// [OTPPage]
class OTPRoute extends PageRouteInfo<OTPRouteArgs> {
  OTPRoute(
      {required String phoneNumber,
      required Completer<dynamic> completer,
      Key? key})
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

  final Completer<dynamic> completer;

  final Key? key;

  @override
  String toString() {
    return 'OTPRouteArgs{phoneNumber: $phoneNumber, completer: $completer, key: $key}';
  }
}

/// generated route for
/// [Signup6Page]
class Signup6Route extends PageRouteInfo<Signup6RouteArgs> {
  Signup6Route(
      {required Completer<dynamic> completer,
      required String phoneNumber,
      required String photoURL,
      required String uid,
      Key? key})
      : super(Signup6Route.name,
            path: '/signup6-page',
            args: Signup6RouteArgs(
                completer: completer,
                phoneNumber: phoneNumber,
                photoURL: photoURL,
                uid: uid,
                key: key));

  static const String name = 'Signup6Route';
}

class Signup6RouteArgs {
  const Signup6RouteArgs(
      {required this.completer,
      required this.phoneNumber,
      required this.photoURL,
      required this.uid,
      this.key});

  final Completer<dynamic> completer;

  final String phoneNumber;

  final String photoURL;

  final String uid;

  final Key? key;

  @override
  String toString() {
    return 'Signup6RouteArgs{completer: $completer, phoneNumber: $phoneNumber, photoURL: $photoURL, uid: $uid, key: $key}';
  }
}
