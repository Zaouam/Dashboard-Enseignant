import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'CategorieCard.dart';

class Piechart extends StatefulWidget {
  @override
  _PiechartState createState() => _PiechartState();
}

class _PiechartState extends State<Piechart> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "الإحصائيّات",
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Container(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Categories(),
        ],
      ))));

  Widget buildImageInteractionCard({String title}) => SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: PieChart(
            dataMap: {"اختبار إيجابي": 80, "اختبار سلبي": 20},
            chartRadius: 300,
            chartType: ChartType.ring,
            centerText: "30",
            colorList: [Colors.redAccent, Colors.tealAccent[400]],
            chartValuesOptions: ChartValuesOptions(
                chartValueStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                showChartValueBackground: false,
                showChartValuesInPercentage: true,
                showChartValuesOutside: true),
            legendOptions: LegendOptions(
                legendTextStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                legendPosition: LegendPosition.right,
                showLegends: true),
            animationDuration: Duration(milliseconds: 2000),
          ),
        ),
        Center(
            child: Text(
          title,
          style: TextStyle(fontSize: 30),
        )),
        SizedBox(
          height: 100,
        ),
      ]));
}
