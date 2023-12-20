import 'package:advisor/1_domain/entities/advice_entities.dart';
import 'package:advisor/1_domain/failures/advice_failure.dart';
import 'package:dartz/dartz.dart';

class AdviceUsecases {
  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    // call a repository to get a data (failure or data)
    // for example get an advice
    await Future.delayed(const Duration(seconds: 3), () => {});
    // Call to repo was successfull : -> return data not failure
    //return right(const AdviceEntity(
    //    advice:
    //        'We cannot solve problems with the kind of thinking we employed when we came up with them.” — Albert Einstein',
    //    id: 1));
    //Call to repo went wrong and returning failure
    return left(CacheFailure());
  }
}
