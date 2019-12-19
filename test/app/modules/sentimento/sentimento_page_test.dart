import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_pensamento/app/modules/sentimento/sentimento_page.dart';

main() {
  testWidgets('SentimentoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SentimentoPage(title: 'Sentimento')));
    final titleFinder = find.text('Sentimento');
    expect(titleFinder, findsOneWidget);
  });
}
  