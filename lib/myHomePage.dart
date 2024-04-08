import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, double> dataMap = {
    "Flutter": 5,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        child: PieChart(dataMap: dataMap, 
        chartType: ChartType.ring,
        
        legendOptions: LegendOptions(
          
          showLegendsInRow: false,
          showLegends: true,

        legendPosition: LegendPosition.bottom,
        
      ),),
      ),),
    );
  }
}