import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:omdb_movie/main.dart';
import 'package:omdb_movie/screens/omdb_home_screen.dart';

void main() {
  group('Find by Type', () {
    testWidgets('Test to see the OMDB Home screen widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });

  group('Home Screen widget test', () {
    testWidgets('Home Screen Test', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: OMDBHomeScreen(),
        ),
      );
      final textFinder = find.byKey(const Key('search-text'));
      await tester.enterText(textFinder, 'Spidermain');
      await tester.pump();
    });
  });
}
