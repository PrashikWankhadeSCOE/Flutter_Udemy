import 'package:advisor/1_domain/entities/advice_entities.dart';

abstract class AdviceRepo {
  Future<AdviceEntity> getAdviceFromDatasource();
}
