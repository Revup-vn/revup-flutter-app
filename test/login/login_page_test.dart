import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:revup/l10n/l10n.dart';
import 'package:revup/login/login.dart';
import 'package:revup/login/view/login_view.dart';

void main() {
  group('LoginPage', () {
    testWidgets(
      'renders LoginView',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: LoginPage(),
          ),
        );
        expect(find.byType(LoginView), findsOneWidget);
      },
    );
  });

  group('LoginView', () {
    testWidgets(
      'renders logo, title and subtitle',
      (WidgetTester tester) async {},
    );
  });
}
