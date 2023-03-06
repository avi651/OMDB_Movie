import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_omdb/main.dart';
import 'package:movie_omdb/screens/omdb_home_screen.dart';

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