import 'package:fl_chart/fl_chart.dart' as fl;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giftify/models/chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

// 1. widget class now extends [ConsumerWidget]
class ChartPage extends ConsumerStatefulWidget {
  ChartPage({
    super.key,
    required this.data,
    required this.dummyData,
    required this.dummyData2,
  });
  final List<DeveloperSeries> data;
  final List<fl.FlSpot> dummyData;
  final List<fl.PieChartSectionData> dummyData2;

  @override
  ChartPageState createState() => ChartPageState();
}

class ChartPageState extends ConsumerState<ChartPage> {
  @override
  void initState() {
    super.initState();
    // "ref" can be used in all life-cycles of a StatefulWidget.
  }

  // final List<fl.FlSpot> dummyData1 = List.generate(8, (index) {
  //   return fl.FlSpot(index.toDouble(), index * Random().nextDouble());
  // });

  // // This will be used to draw the orange line
  // final List<fl.FlSpot> dummyData2 = List.generate(8, (index) {
  //   return fl.FlSpot(index.toDouble(), index * Random().nextDouble());
  // });

  // // This will be used to draw the blue line
  // final List<fl.FlSpot> dummyData3 = List.generate(8, (index) {
  //   return fl.FlSpot(index.toDouble(), index * Random().nextDouble());
  // });

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, String>> series = [
      charts.Series(
          id: "Bar Chart",
          data: widget.data,
          domainFn: (DeveloperSeries series, _) => series.year.toString(),
          measureFn: (DeveloperSeries series, _) => series.sales,
          displayName: "Bar Chart",
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];
    List<charts.Series<DeveloperSeries, num>> lineSeries = [
      charts.Series(
          id: "Line Chart",
          displayName: "Line Chart",
          data: widget.data,
          domainFn: (DeveloperSeries series, _) => series.year,
          measureFn: (DeveloperSeries series, _) => series.sales,
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];

    return Scaffold(
        appBar: AppBar(
          title:const Text("Chart Page"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 400.sp,
              child: charts.BarChart(
                series,
                animate: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text("A Vertical Bar Chart"),
            ),
            SizedBox(
              height: 400.sp,
              child: charts.BarChart(
                vertical: false,
                series,
                animate: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text("A Horizontal Bar Chart"),
            ),

            SizedBox(
              height: 400.sp,
              child: charts.LineChart(
                lineSeries,
                animate: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text("A Line Chart"),
            ),
               SizedBox(
              height: 400.sp,
              child: charts.ScatterPlotChart(
                lineSeries,
                animate: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text("A ScatterPlot Chart"),
            ),
            // SizedBox(
            //   height: 400.sp,
            //   child: Container(
            //     padding: const EdgeInsets.all(20),
            //     width: double.infinity,
            //     child: fl.LineChart(
            //       fl.LineChartData(
            //         borderData: fl.FlBorderData(show: false),
            //         lineBarsData: [
            //           // The red line
            //           fl.LineChartBarData(
            //             spots: widget.dummyData,
            //             isCurved: true,
            //             barWidth: 3,
            //             color: Colors.indigo,
            //           ),
            //           // The orange line
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 400.h,
            //   child: Padding(
            //       padding: const EdgeInsets.all(30),
            //       child: fl.PieChart(fl.PieChartData(
            //           centerSpaceRadius: 5,
            //           borderData: fl.FlBorderData(show: true),
            //           sectionsSpace: 2,
            //           sections: widget.dummyData2))),
            // )
          ],
        )));
  }
}
