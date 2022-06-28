import 'package:dartz/dartz.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:revup_core/core.dart';

import 'package:revup/router/app_router.dart';
import 'l10n/l10n.dart';

void main() {
  final appRouter = AppRouter();
  bootstrap(
    tuple2(appRouter, appRouter.defaultRouteParser()),
    const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
    ],
    AppLocalizations.supportedLocales,
  );
}
