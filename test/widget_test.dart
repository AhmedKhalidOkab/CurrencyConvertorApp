import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:currencyapp/main.dart';

void main() {
  testWidgets('MyApp widget should contain MaterialApp',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our widget is MaterialApp.
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
