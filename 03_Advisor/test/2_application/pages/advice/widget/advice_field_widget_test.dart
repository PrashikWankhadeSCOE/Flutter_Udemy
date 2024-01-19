import 'package:advisor/3_application/pages/advice/widgets/advice_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget widgetUnderTest({required String adviceText}) {
    return MaterialApp(
      home: AdviceField(advice: adviceText),
    );
  }

  group('Advice Field', () {
    group('should be displayed correctly', () {
      testWidgets(
        'when a short text is given',
        (widgetTester) async {
          const String text = 'a';
          await widgetTester.pumpWidget(widgetUnderTest(adviceText: text));
          await widgetTester.pumpAndSettle();

          final adviceFieldFinder = find.textContaining('a');

          expect(adviceFieldFinder, findsOneWidget);
        },
      );
      testWidgets(
        'when a long text is given',
        (widgetTester) async {
          const String text =
              'Hello every one hope you are doing well i dont what should i add other things in here so i writing anything i want to and i no one is going to watch this project but still if u r watching then have a nice day and keep supporting as u are doing now ';
          await widgetTester.pumpWidget(widgetUnderTest(adviceText: text));
          await widgetTester.pumpAndSettle();

          final adviceFieldFinder = find.byType(AdviceField);

          expect(adviceFieldFinder, findsOneWidget);
        },
      );
      testWidgets(
        'when a no text is given',
        (widgetTester) async {
          const String text = '';
          await widgetTester.pumpWidget(widgetUnderTest(adviceText: text));
          await widgetTester.pumpAndSettle();

          final adviceFieldFinder = find.text(AdviceField.emptyadvice);
          final adviceText =
              widgetTester.widget<AdviceField>(find.byType(AdviceField)).advice;

          expect(adviceFieldFinder, findsOneWidget);
          expect(adviceText, '');
        },
      );
    });
  });
}
