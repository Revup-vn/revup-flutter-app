import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:revup/account/view/account_page.dart';
import 'package:revup/l10n/l10n.dart';

void main() {
  group('AccountPage', () {
    testWidgets(
      'renders Avatar',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: AccountPage(),
          ),
        );
        expect(find.byType(CachedNetworkImage), findsOneWidget);
      },
    );
  });
}
