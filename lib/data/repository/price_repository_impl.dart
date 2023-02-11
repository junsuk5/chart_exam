import 'package:chart_exam/domain/model/price.dart';
import 'package:chart_exam/domain/repository/price_repository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class PriceRepositoryImpl implements PriceRepository {
  late WebSocketChannel _channel;

  PriceRepositoryImpl() {
    final wsUrl = Uri.parse(
        'wss://fstream.binance.com/ws/btcusdt_perpetual@continuousKline_1m');
    _channel = WebSocketChannel.connect(wsUrl);
  }

  // @override
  // Stream<List<Price>> get pricesStream {
  //   return _channel.stream.map((prices) {
  //     Iterable pricesJson = prices;
  //     return pricesJson.map((e) => Price.fromJson(e)).toList();
  //   });
  // }

  @override
  Stream<Price> get priceStream {
    return _channel.stream.map((e) {
      return Price.fromJson(e);
    });
  }
}
