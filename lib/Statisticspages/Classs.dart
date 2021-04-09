/*import 'package:flutter/material.dart';
import 'package:flutter_charts/Statisticspages/Categorie.dart';
import 'package:pie_chart/pie_chart.dart';

class Classs extends StatefulWidget {
  @override
  _ClasssState createState() => _ClasssState();
}

class _ClasssState extends State<Classs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Category(),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
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
                'قصر النظر',
                style: TextStyle(fontSize: 30),
              )),
              SizedBox(
                height: 100,
              ),
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
                'اللاّبؤريّة',
                style: TextStyle(fontSize: 30),
              )),
              SizedBox(
                height: 100,
              ),
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
                'عسر القراءة',
                style: TextStyle(fontSize: 30),
              )),
            ],
          ))
        ])));
  }
}
*/
