import 'package:advisor/1_domain/entities/advice_entities.dart';
import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:dartz/dartz.dart';

abstract class AdviceRepo {
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource();
}
