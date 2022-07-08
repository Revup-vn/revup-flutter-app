import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:revup/core/components/pincode.dart';
import 'package:revup/l10n/l10n.dart';

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
                body: PinCode(
                  phoneNumber: '+84 163999999',
                  bodyLabel: 'l10n.loginPhoneNumberLabel',
                  headLineLabel: 'l10n.enterPasswordLabel',
                  footerLabel: 'l10n.forgotPasswordLabel',
                  buttonLabel: 'l10n.forgotPasswordLabel',
                  hasButton: false,
                  'errorMessage',
                ),
              ),
            ),
          );
          expect(find.byType(PinCode), findsOneWidget);
        },
      );
    },
  );
}
