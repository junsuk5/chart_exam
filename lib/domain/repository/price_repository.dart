import 'package:chart_exam/domain/model/price.dart';

abstract class PriceRepository {
  Stream<List<Price>> get pricesStream;
}
