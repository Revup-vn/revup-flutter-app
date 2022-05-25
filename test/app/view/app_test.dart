import 'package:flutter_test/flutter_test.dart';
import 'package:revup/app/app.dart';
import 'package:revup/test/view/test_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(TestPage), findsOneWidget);
    });
  });
}
