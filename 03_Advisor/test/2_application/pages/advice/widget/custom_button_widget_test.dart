import 'package:advisor/3_application/pages/advice/widgets/costum_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

abstract class OnCustomButtonTap {
  void call();
}

class MockOnCustomButtonTap extends Mock implements OnCustomButtonTap {}

void main() {
  Widget widgetUnderMethod({Function()? callback}) {
    return MaterialApp(
      home: Scaffold(
        body: CostumButton(
          onTap: callback,
        ),
      ),
    );
  }

  group('Custom Button ', () {
    group('is Button rendered correctly', () {
      testWidgets('has all parts that it needs', (widgetTester) async {
        await widgetTester.pumpWidget(
          widgetUnderMethod(callback: () {}),
        );
        final buttonLabelFinder = find.text(
          'Get Advice',
        );
        expect(
          buttonLabelFinder,
          findsOneWidget,
        );
      });
    });
    group(
      'shoud handle onTap',
      () {
        testWidgets(
          'when someone has pressed the button',
          (widgetTester) async {
            final mockOnCustomButtonTap = MockOnCustomButtonTap();
            await widgetTester.pumpWidget(
                widgetUnderMethod(callback: mockOnCustomButtonTap.call));
            final costumButtonFinder = find.byType(CostumButton);
            widgetTester.tap(costumButtonFinder);
            verify(mockOnCustomButtonTap.call).called(1);
          },
        );
      },
    );
  });
}
