import 'package:chart_exam/domain/model/price.dart';
import 'package:chart_exam/presentation/chart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChartViewModel>();

    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: [
            LineSeries<Price, String>(
                dataSource: viewModel.prices,
                xValueMapper: (Price price, _) => price.time,
                yValueMapper: (Price price, _) => price.closePrice),
          ],
        ),
      ),
    );
  }
}
