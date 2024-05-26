import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:sw2project/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Test example", (WidgetTester tester) async {
    app.main(); // Assuming your main app is launched here
    await tester.pumpAndSettle();

    // Example of finding a widget and tapping
    final Finder fab = find.byTooltip('Increment');
    await tester.tap(fab);
    await tester.pumpAndSettle();

    // Add assertions to check app behavior
    expect(find.text('1'), findsOneWidget);
  });
}