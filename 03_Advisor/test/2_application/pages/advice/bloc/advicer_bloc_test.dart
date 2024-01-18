import 'package:advisor/3_application/pages/advice/bloc/advicer_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';

void main() {
  group('AdvicerBloc', () {
    group('should emits', () {
      blocTest<AdvicerBloc, AdvicerState>(
        'nothing when no event is added',
        build: () => AdvicerBloc(),
        expect: () => const <AdvicerState>[],
      );

      blocTest(
        '[AdvicerStateLoading,AdviserStateError] when AdviceRequestEvent is added',
        build: () => AdvicerBloc(),
        act: (bloc) => bloc.add(AdviceRequestedEvent()),
        wait: const Duration(seconds: 3),
        expect: () => <AdvicerState>[
          AdvicerStateLoading(),
          AdvicerStateError(message: 'error message')
        ],
      );
    });
  });
}
