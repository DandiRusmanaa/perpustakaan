import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Library app loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify app bar and page title
    expect(find.text('Library'), findsOneWidget);
    expect(find.text('My Library'), findsOneWidget);
    
    // Verify book count (should show 10 books)
    expect(find.text('Jumlah Buku: 10'), findsOneWidget);
    
    // Verify sample books are listed
    expect(find.text('DILAN'), findsOneWidget);
    expect(find.text('by Pidi Baiq'), findsOneWidget);
    expect(find.text('Laskar Pelangi'), findsOneWidget);
    expect(find.text('by Andrea Hirata'), findsOneWidget);
    
    // Verify Read buttons are present (lazy loaded)
    expect(find.text('Read'), findsWidgets);
  });
}

