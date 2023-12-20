import 'package:advisor/1_domain/entities/advice_entities.dart';

class AdviceUsecases {
  Future<AdviceEntity> getAdvice() async {
    // call a repository to get a data (failure or data)
    // for example get an advice
    await Future.delayed(const Duration(seconds: 3), () => {});
    return const AdviceEntity(
        advice:
            'We cannot solve problems with the kind of thinking we employed when we came up with them.” — Albert Einstein',
        id: 1);
  }
}
