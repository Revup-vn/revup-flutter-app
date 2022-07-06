import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:revup/l10n/l10n.dart';
import 'package:revup/login/widgets/password.dart';

void main() {
  group(
    'PasswordForm',
    () {
      testWidgets(
        'render enter password view',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              home: Scaffold(
                body: PinCodePasswordVerification('+84 163999999'),
              ),
            ),
          );
          expect(find.byType(PinCodePasswordVerification), findsOneWidget);
        },
      );
    },
  );
}
