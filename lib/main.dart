import 'package:chart_exam/data/repository/price_repository_impl.dart';
import 'package:chart_exam/presentation/chart_screen.dart';
import 'package:chart_exam/presentation/chart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ChartViewModel(MockPriceRepositoryImpl()),
        child: const ChartScreen(),
      ),
    );
  }
}
