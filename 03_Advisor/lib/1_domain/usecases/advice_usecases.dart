import 'package:advisor/1_domain/entities/advice_entities.dart';
import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:advisor/1_domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceUsecases {
  final AdviceRepo adviceRepo;
  AdviceUsecases({required this.adviceRepo});
  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    //! Space for bussiness Logic
  }
}
