import 'dart:async';

import 'package:chart_exam/domain/model/price.dart';
import 'package:chart_exam/domain/repository/price_repository.dart';

class MockPriceRepositoryImpl implements PriceRepository {

  final _eventController = StreamController<List<Price>>();

  @override
  Stream<List<Price>> get pricesStream => _eventController.stream;

  MockPriceRepositoryImpl() {
    init();
  }

  Future<void> init() async {
    _eventController.add(chartData);
    await Future.delayed(const Duration(seconds: 2));

    _eventController.add(chartData2);
    await Future.delayed(const Duration(seconds: 2));

    _eventController.add(chartData3);
    await Future.delayed(const Duration(seconds: 2));

    _eventController.add(chartData4);
    await Future.delayed(const Duration(seconds: 2));

    _eventController.add(chartData5);
  }
}

final chartData = [
  Price(23371.16000000, "14:10"),
  Price(23372.27000000, "14:15"),
  Price(23382.41000000, "14:20"),
  Price(23369.61000000, "14:25"),
  Price(23371.48000000, "14:30"),
];

final chartData2 = [
  Price(23372.27000000, "14:15"),
  Price(23382.41000000, "14:20"),
  Price(23369.61000000, "14:25"),
  Price(23371.48000000, "14:30"),
  Price(23384.91000000, "14:35"),
];

final chartData3 = [
  Price(23382.41000000, "14:20"),
  Price(23369.61000000, "14:25"),
  Price(23371.48000000, "14:30"),
  Price(23384.91000000, "14:35"),
  Price(23381.31000000, "14:40"),
];

final chartData4 = [
  Price(23369.61000000, "14:25"),
  Price(23371.48000000, "14:30"),
  Price(23384.91000000, "14:35"),
  Price(23381.31000000, "14:40"),
  Price(23375.30000000, "14:45"),
];

final chartData5 = [
  Price(23371.48000000, "14:30"),
  Price(23384.91000000, "14:35"),
  Price(23381.31000000, "14:40"),
  Price(23375.30000000, "14:45"),
  Price(23385.06000000, "14:50"),
];