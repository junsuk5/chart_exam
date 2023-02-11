import 'dart:async';

import 'package:chart_exam/domain/model/price.dart';
import 'package:chart_exam/domain/repository/price_repository.dart';

class MockPriceRepositoryImpl implements PriceRepository {

  final _eventController = StreamController<Price>();

  @override
  Stream<Price> get priceStream => _eventController.stream;

  MockPriceRepositoryImpl() {
    init();
  }

  Future<void> init() async {
    _eventController.add(Price(23384.91000000, "14:35"));
    await Future.delayed(const Duration(seconds: 2));

    _eventController.add(Price(23381.31000000, "14:40"));
    await Future.delayed(const Duration(seconds: 2));

    _eventController.add(Price(23375.30000000, "14:45"));
    await Future.delayed(const Duration(seconds: 2));

    _eventController.add(Price(23385.06000000, "14:50"));
    await Future.delayed(const Duration(seconds: 2));
  }
}