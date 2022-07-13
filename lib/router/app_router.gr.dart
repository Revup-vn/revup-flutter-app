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
    OnboardingRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const OnboardingPage());
    },
    LoginPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPasswordRouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: LoginPasswordPage(args.phoneNumber, key: args.key));
    },
    OTPRoute.name: (routeData) {
      final args = routeData.argsAs<OTPRouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: OTPPage(args.phoneNumber, args.type, key: args.key));
    },
    ChangePasswordRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ChangePasswordPage());
    },
    EnterNewPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<EnterNewPasswordRouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: EnterNewPasswordPage(
              args.phoneNumber, args.type, args.accessToken,
              key: args.key));
    },
    SignupPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<SignupPasswordRouteArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: SignupPasswordPage(
              args.phoneNumber, args.type, args.accessToken,
              key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(TestRoute.name, path: '/test-page'),
        RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        RouteConfig(LoginPasswordRoute.name, path: '/login-password-page'),
        RouteConfig(OTPRoute.name, path: '/o-tp-page'),
        RouteConfig(ChangePasswordRoute.name, path: '/change-password-page'),
        RouteConfig(EnterNewPasswordRoute.name,
            path: '/enter-new-password-page'),
        RouteConfig(SignupPasswordRoute.name, path: '/signup-password-page')
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
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [LoginPasswordPage]
class LoginPasswordRoute extends PageRouteInfo<LoginPasswordRouteArgs> {
  LoginPasswordRoute({required String phoneNumber, Key? key})
      : super(LoginPasswordRoute.name,
            path: '/login-password-page',
            args: LoginPasswordRouteArgs(phoneNumber: phoneNumber, key: key));

  static const String name = 'LoginPasswordRoute';
}

class LoginPasswordRouteArgs {
  const LoginPasswordRouteArgs({required this.phoneNumber, this.key});

  final String phoneNumber;

  final Key? key;

  @override
  String toString() {
    return 'LoginPasswordRouteArgs{phoneNumber: $phoneNumber, key: $key}';
  }
}

/// generated route for
/// [OTPPage]
class OTPRoute extends PageRouteInfo<OTPRouteArgs> {
  OTPRoute({required String phoneNumber, required PinCodeType type, Key? key})
      : super(OTPRoute.name,
            path: '/o-tp-page',
            args: OTPRouteArgs(phoneNumber: phoneNumber, type: type, key: key));

  static const String name = 'OTPRoute';
}

class OTPRouteArgs {
  const OTPRouteArgs({required this.phoneNumber, required this.type, this.key});

  final String phoneNumber;

  final PinCodeType type;

  final Key? key;

  @override
  String toString() {
    return 'OTPRouteArgs{phoneNumber: $phoneNumber, type: $type, key: $key}';
  }
}

/// generated route for
/// [ChangePasswordPage]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: '/change-password-page');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [EnterNewPasswordPage]
class EnterNewPasswordRoute extends PageRouteInfo<EnterNewPasswordRouteArgs> {
  EnterNewPasswordRoute(
      {required String phoneNumber,
      required PinCodeType type,
      required String accessToken,
      Key? key})
      : super(EnterNewPasswordRoute.name,
            path: '/enter-new-password-page',
            args: EnterNewPasswordRouteArgs(
                phoneNumber: phoneNumber,
                type: type,
                accessToken: accessToken,
                key: key));

  static const String name = 'EnterNewPasswordRoute';
}

class EnterNewPasswordRouteArgs {
  const EnterNewPasswordRouteArgs(
      {required this.phoneNumber,
      required this.type,
      required this.accessToken,
      this.key});

  final String phoneNumber;

  final PinCodeType type;

  final String accessToken;

  final Key? key;

  @override
  String toString() {
    return 'EnterNewPasswordRouteArgs{phoneNumber: $phoneNumber, type: $type, accessToken: $accessToken, key: $key}';
  }
}

/// generated route for
/// [SignupPasswordPage]
class SignupPasswordRoute extends PageRouteInfo<SignupPasswordRouteArgs> {
  SignupPasswordRoute(
      {required String phoneNumber,
      required PinCodeType type,
      required String accessToken,
      Key? key})
      : super(SignupPasswordRoute.name,
            path: '/signup-password-page',
            args: SignupPasswordRouteArgs(
                phoneNumber: phoneNumber,
                type: type,
                accessToken: accessToken,
                key: key));

  static const String name = 'SignupPasswordRoute';
}

class SignupPasswordRouteArgs {
  const SignupPasswordRouteArgs(
      {required this.phoneNumber,
      required this.type,
      required this.accessToken,
      this.key});

  final String phoneNumber;

  final PinCodeType type;

  final String accessToken;

  final Key? key;

  @override
  String toString() {
    return 'SignupPasswordRouteArgs{phoneNumber: $phoneNumber, type: $type, accessToken: $accessToken, key: $key}';
  }
}
