class Price {
  final double closePrice;
  final String time;

  Price(this.closePrice, this.time);

  Price.fromJson(Map<String, dynamic> json)
      : closePrice = json['k']['c'],
        time = json['k']['t'];
}
