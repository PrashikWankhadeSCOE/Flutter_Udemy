import 'dart:io';
import 'package:advisor/0_data/datasources/advice_remote_datasource.dart';
import 'package:advisor/0_data/exceptions/exceptions.dart';
import 'package:advisor/0_data/models/advice_model.dart';
import 'package:advisor/0_data/repository/advice_repo_impl.dart';
import 'package:advisor/1_domain/entities/advice_entities.dart';
import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import 'advice_repo_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AdviceRemoteDatasourceImpl>()])
void main() {
  group('AdviceRepoImpl', () {
    group('should return AdviceEntity', () {
      test('when AdviceRemoteDataSource returns a AdviceModel', () async {
        final mockAdviceReoteDatasource = MockAdviceRemoteDatasourceImpl();
        final adviceRepoImpUnderTest =
            AdviceRepoImpl(adviceRemoteDataSource: mockAdviceReoteDatasource);

        when(mockAdviceReoteDatasource.getRandomAdviceFromAPI()).thenAnswer(
            (realInvocation) =>
                Future.value(AdviceModel(advice: 'test', id: 42)));

        final result = await adviceRepoImpUnderTest.getAdviceFromDatasource();

        expect(result.isLeft(), false);
        expect(result.isRight(), true);
        expect(result,
            Right<Failure, AdviceModel>(AdviceModel(advice: 'test', id: 42)));

        verify(mockAdviceReoteDatasource.getRandomAdviceFromAPI()).called(1);
        verifyNoMoreInteractions(mockAdviceReoteDatasource);
      });
    });

    group('should return left with', () {
      test('a ServerFailure when a ServerException occurs', () async {
        final mockAdviceReoteDatasource = MockAdviceRemoteDatasourceImpl();
        final adviceRepoImpUnderTest =
            AdviceRepoImpl(adviceRemoteDataSource: mockAdviceReoteDatasource);

        when(mockAdviceReoteDatasource.getRandomAdviceFromAPI())
            .thenThrow(ServerException());

        final result = await adviceRepoImpUnderTest.getAdviceFromDatasource();

        expect(result.isLeft(), true);
        expect(result.isRight(), false);
        expect(result, Left<Failure, AdviceEntity>(ServerFailure()));
      });

      test('a GeneralFailure when a GeneralFailure occurs', () async {
        final mockAdviceReoteDatasource = MockAdviceRemoteDatasourceImpl();
        final adviceRepoImpUnderTest =
            AdviceRepoImpl(adviceRemoteDataSource: mockAdviceReoteDatasource);

        when(mockAdviceReoteDatasource.getRandomAdviceFromAPI())
            .thenThrow(const SocketException('test'));

        final result = await adviceRepoImpUnderTest.getAdviceFromDatasource();

        expect(result.isLeft(), true);
        expect(result.isRight(), false);
        expect(result, Left<Failure, AdviceEntity>(GeneralFailure()));
      });
    });
  });
}
