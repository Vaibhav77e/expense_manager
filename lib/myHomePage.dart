import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, double> dataMap = {
    "Income": 5,
    "Expense": 3,
  };

  List<Color> colorList = [
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 80,),
              Container(
                width: 500,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(color: Color.fromARGB(255, 239, 236, 236)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildExpenseFields(title: ' Income', color: Colors.green,money: '500000'),
                        buildExpenseFields(title: ' Expense', color: Colors.red,money: '25000'),
                      ],
                    ),
                    PieChart(dataMap: dataMap, 
                    colorList: colorList,
                    chartRadius:140,
                    chartType: ChartType.ring,
                    chartValuesOptions: ChartValuesOptions(
                      showChartValues: false
                    ),
                    legendOptions: LegendOptions(
                    showLegendsInRow: true,
                    showLegends: false,
                    legendPosition: LegendPosition.bottom,
                    ),),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text('Income :'),
                  Text('250000'),
                ],
              ),
              Row(
                children: [
                  Text('Expenses :'),
                  Text('50000'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildExpenseFields({required String title, required Color? color,required String money}){
    return Column(
      children: [
        Row(
              children: [
              Container(height: 20,width: 10,color: color,),
              Text(title)
            ],
        ),
        Text(money),
      ],
    );
    }
}