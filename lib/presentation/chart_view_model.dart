import 'dart:async';

import 'package:chart_exam/domain/model/price.dart';
import 'package:chart_exam/domain/repository/price_repository.dart';
import 'package:flutter/material.dart';

class ChartViewModel extends ChangeNotifier {
  final PriceRepository priceRepository;

  List<Price> prices = chartData;

  ChartViewModel(this.priceRepository) {
    fetch();
  }

  Future<void> fetch() async {
    priceRepository.priceStream.listen((price) {
      prices.removeAt(0);
      prices.add(price);
      notifyListeners();
    });
  }
}

final chartData = [
  Price(23371.16000000, "14:10"),
  Price(23372.27000000, "14:15"),
  Price(23382.41000000, "14:20"),
  Price(23369.61000000, "14:25"),
  Price(23371.48000000, "14:30"),
];