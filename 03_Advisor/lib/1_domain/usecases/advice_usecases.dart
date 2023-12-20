import 'package:advisor/0_data/repository/advice_repo_impl.dart';
import 'package:advisor/1_domain/entities/advice_entities.dart';
import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:dartz/dartz.dart';

class AdviceUsecases {
  final adviceRepo = AdviceRepoImpl();
  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    //! Space for bussiness Logic
  }
}
