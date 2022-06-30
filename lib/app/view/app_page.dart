import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:revup/l10n/l10n.dart';
import '../router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(tcmhoang): Do check authentication. If the user is logged in or not.
    // TODO(tcmhoang): Implement app's theme.

    final appRouter = AppRouter();
    Future<void>.delayed(
      const Duration(seconds: 5),
      () => appRouter.pushAndPopUntil(
        const TestRoute(),
        predicate: (_) => false,
      ),
    );

    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(appRouter),
    );
  }
}
