import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:flutter_pensamento/app/modules/sentimento/pages/descrever/descrever_page.dart';

main() {
  testWidgets('DescreverPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DescreverPage(title: 'Descrever')));
    final titleFinder = find.text('Descrever');
    expect(titleFinder, findsOneWidget);
  });
}
  