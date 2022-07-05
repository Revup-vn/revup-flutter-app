import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:revup/l10n/l10n.dart';
import 'package:revup/login/widgets/password.dart';

void main() {
  group(
    'PasswordForm',
    () {
      testWidgets(
        'render icon and text button of login form',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            const MaterialApp(
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              home: PasswordForm(),
            ),
          );
          expect(find.text('Nhập mã OTP'), findsOneWidget);
          expect(
            find.text(
              'Mã OTP sẽ được gửi đến số : +84 163999999',
            ),
            findsOneWidget,
          );
          expect(find.text('Gửi lại mã OTP'), findsOneWidget);
        },
      );
    },
  );
}
