import 'package:advisor/1_domain/entities/advice_entities.dart';
import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:advisor/1_domain/usecases/advice_usecases.dart';
import 'package:advisor/3_application/pages/advice/cubit/advicer_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockAdviceUseCases extends Mock implements AdviceUsecases {}

void main() {
  group('AdvicerCubit', () {
    group('should emit', () {
      MockAdviceUseCases mockAdviceUseCases = MockAdviceUseCases();
      blocTest(
        'nothing when no method is called',
        build: () => AdvicerCubit(adviceUsecases: mockAdviceUseCases),
        expect: () => const <AdvicerCubitState>[],
      );
      blocTest(
        '[AdvicerStateLoading.AdvicerStateLoaded when adviceRequested is called]',
        setUp: () => when(() => mockAdviceUseCases.getAdvice()).thenAnswer(
          (invocation) => Future.value(
            const Right<Failure, AdviceEntity>(
              AdviceEntity(advice: 'advice', id: 1),
            ),
          ),
        ),
        build: () => AdvicerCubit(adviceUsecases: mockAdviceUseCases),
        act: (cubit) => cubit.adviceRequested(),
        expect: () => const <AdvicerCubitState>[
          AdvicerStateLoading(),
          AdvicerStateLoaded(advice: 'advice')
        ],
      );

      group(
        '[AdvicerStateLoading,AdvicerStateError] when adviceRequested() is called',
        () => {
          blocTest(
            'and a serverFailure occurs',
            setUp: () => when(() => mockAdviceUseCases.getAdvice()).thenAnswer(
              (invocation) => Future.value(
                Left<Failure, AdviceEntity>(
                  ServerFailure(),
                ),
              ),
            ),
            build: () => AdvicerCubit(adviceUsecases: mockAdviceUseCases),
            act: (cubit) => cubit.adviceRequested(),
            expect: () => const <AdvicerCubitState>[
              AdvicerStateLoading(),
              AdvicerStateError(message: serverFailureMessage)
            ],
          ),
          blocTest(
            'and a CacheFailure occurs',
            setUp: () => when(() => mockAdviceUseCases.getAdvice()).thenAnswer(
              (invocation) => Future.value(
                Left<Failure, AdviceEntity>(
                  CacheFailure(),
                ),
              ),
            ),
            build: () => AdvicerCubit(adviceUsecases: mockAdviceUseCases),
            act: (cubit) => cubit.adviceRequested(),
            expect: () => const <AdvicerCubitState>[
              AdvicerStateLoading(),
              AdvicerStateError(message: cacheFailureMessage)
            ],
          ),
          blocTest(
            'and a GeneralFAilure occurs',
            setUp: () => when(() => mockAdviceUseCases.getAdvice()).thenAnswer(
              (invocation) => Future.value(
                Left<Failure, AdviceEntity>(
                  GeneralFailure(),
                ),
              ),
            ),
            build: () => AdvicerCubit(adviceUsecases: mockAdviceUseCases),
            act: (cubit) => cubit.adviceRequested(),
            expect: () => const <AdvicerCubitState>[
              AdvicerStateLoading(),
              AdvicerStateError(message: generalFailureMessage)
            ],
          ),
        },
      );
    });
  });
}
