import 'package:advisor/3_application/pages/advice/widgets/costum_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget widgetUnderTest({Function()? onTap}) {
    return MaterialApp(
      home: Scaffold(
        body: CostumButton(
          onTap: onTap,
        ),
      ),
    );
  }

  group(
    'Golden Test',
    () {
      group(
        'Custom Button',
        () {
          testWidgets(
            'Is enabled',
            (widgetTester) async {
              await widgetTester.pumpWidget(widgetUnderTest(
                onTap: () {},
              ));
              await expectLater(
                find.byType(CostumButton),
                matchesGoldenFile('goldens/custonButtonEnabeled.png'),
              );
            },
          );

          testWidgets(
            'Is Disabled',
            (widgetTester) async {
              await widgetTester.pumpWidget(widgetUnderTest(
                onTap: () {},
              ));
              await expectLater(
                find.byType(CostumButton),
                matchesGoldenFile('goldens/custonButtonDisabeled.png'),
              );
            },
          );
        },
      );
    },
  );
}
