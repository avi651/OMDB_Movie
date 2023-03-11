import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:omdb_movie/widgets/omdb_txt_widget.dart';

const Key omdbTextWidgetKey = Key('omdb-text-widget');

void main() {
  testWidgets('finds a Text on OMDB App Widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: OMDBTxtWidget(
            key: omdbTextWidgetKey,
            title: 'OMDB Movies',
            fontSize: 16,
            txtColor: Colors.red),
      ),
    ));
    expect(find.text('OMDB Movies'), findsOneWidget);
  });
}
