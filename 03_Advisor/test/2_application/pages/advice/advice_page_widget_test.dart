import 'package:advisor/3_application/core/services/theme_service.dart';
import 'package:advisor/3_application/pages/advice/advice_page.dart';
import 'package:advisor/3_application/pages/advice/cubit/advicer_cubit.dart';
import 'package:advisor/3_application/pages/advice/widgets/advice_field.dart';
import 'package:advisor/3_application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:provider/provider.dart';

class MockAdvicerCubit extends MockCubit<AdvicerCubitState>
    implements AdvicerCubit {}

void main() {
  Widget widgetunderTest({required AdvicerCubit cubit}) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ThemeService(),
        child: BlocProvider<AdvicerCubit>(
          create: (context) => cubit,
          child: const AdvicerPage(),
        ),
      ),
    );
  }

  group(
    'AdvicerPage()',
    () {
      late AdvicerCubit mockAdviserCubit;

      setUp(
        () {
          mockAdviserCubit = MockAdvicerCubit();
        },
      );
      group(
        'should be display in ViewState',
        () {
          testWidgets(
            'Initail when cubits Emits AdvicerInitail()',
            (widgetTester) async {
              whenListen(
                mockAdviserCubit,
                Stream.fromIterable([const AdvicerInitial()]),
                initialState: const AdvicerInitial(),
              );

              await widgetTester
                  .pumpWidget(widgetunderTest(cubit: mockAdviserCubit));

              final advicerInitialTextFinder =
                  find.text('Your advice is waiting for you here');
              expect(advicerInitialTextFinder, findsOneWidget);
            },
          );

          testWidgets(
            'Loading when cubits Emits AdvicerStateLoading()',
            (widgetTester) async {
              whenListen(
                mockAdviserCubit,
                Stream.fromIterable([const AdvicerStateLoading()]),
                initialState: const AdvicerStateLoading(),
              );

              await widgetTester
                  .pumpWidget(widgetunderTest(cubit: mockAdviserCubit));
              await widgetTester.pump();
              final advicerLoadingFinder =
                  find.byType(CircularProgressIndicator);
              expect(advicerLoadingFinder, findsOneWidget);
            },
          );

          testWidgets(
            'Advice Text when cubits Emits AdvicerStateLoader()',
            (widgetTester) async {
              whenListen(
                mockAdviserCubit,
                Stream.fromIterable([const AdvicerStateLoaded(advice: '42')]),
                initialState: const AdvicerStateLoaded(advice: '42'),
              );

              await widgetTester
                  .pumpWidget(widgetunderTest(cubit: mockAdviserCubit));
              await widgetTester.pump();

              final advicerLoadedFinder = find.byType(AdviceField);
              final adviceText = widgetTester
                  .widget<AdviceField>(find.byType(AdviceField))
                  .advice;

              expect(advicerLoadedFinder, findsOneWidget);
              expect(adviceText, '42');
            },
          );
          testWidgets(
            'Error when cubits Emits AdvicerStateError()',
            (widgetTester) async {
              whenListen(
                mockAdviserCubit,
                Stream.fromIterable(
                    [const AdvicerStateError(message: 'error')]),
                initialState: const AdvicerStateError(message: 'error'),
              );

              await widgetTester
                  .pumpWidget(widgetunderTest(cubit: mockAdviserCubit));
              await widgetTester.pump();

              final advicerErrorFinder = find.byType(ErrorMessage);
              expect(advicerErrorFinder, findsOneWidget);
            },
          );
        },
      );
    },
  );
}
