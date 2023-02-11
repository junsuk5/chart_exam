import 'package:chart_exam/domain/model/price.dart';

abstract class PriceRepository {
  Stream<Price> get priceStream;
}
