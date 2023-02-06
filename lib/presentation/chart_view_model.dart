import 'dart:async';

import 'package:chart_exam/domain/model/price.dart';
import 'package:chart_exam/domain/repository/price_repository.dart';
import 'package:flutter/material.dart';

class ChartViewModel extends ChangeNotifier {
  final PriceRepository priceRepository;

  List<Price> prices = [];

  ChartViewModel(this.priceRepository) {
    fetch();
  }

  Future<void> fetch() async {
    priceRepository.pricesStream.listen((prices) {
      this.prices = prices;
      notifyListeners();
    });
  }
}

