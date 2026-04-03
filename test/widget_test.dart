import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main1.dart';

void main() {
  testWidgets('Volume Calculator app loads', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VolumeCalculatorApp());

    // Verify that the home page loads with the title
    expect(find.text('Kalkulator Volume'), findsOneWidget);
    expect(find.text('Pilih Bangun Ruang'), findsOneWidget);
    
    // Verify all three shape buttons are present
    expect(find.text('Kubus'), findsOneWidget);
    expect(find.text('Tabung'), findsOneWidget);
    expect(find.text('Bola'), findsOneWidget);
  });
}

