import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:giftify/models/chart_model.dart';
import 'package:giftify/models/sales_data_model.dart';
import 'package:giftify/providers/sales_provider.dart';
import 'package:giftify/views/home/chart_page.dart';
import 'package:fl_chart/fl_chart.dart' as fl;

// 1. widget class now extends [ConsumerWidget]
class HomePage extends ConsumerStatefulWidget {
  HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    // "ref" can be used in all life-cycles of a StatefulWidget.
    fetchSalesDataController(ref);
  }

  List<DeveloperSeries> data = [];
  List<fl.FlSpot> dummyData = [];
  List<fl.PieChartSectionData> dummyData2 = [];
  List<String> yearList = [];

  @override
  Widget build(BuildContext context) {
    var fetchSalesData = ref.watch(fetchSalesDataProvider);
    for (SalesDataModel salesData in fetchSalesData) {
      data.add(DeveloperSeries(
        year: int.parse(
            salesData.orderDate!.substring(salesData.orderDate!.length - 4)),
        sales: double.parse(salesData.sales!).round(),
        barColor: charts.ColorUtil.fromDartColor(Colors.green),
      ));
      dummyData.add(fl.FlSpot(
          double.parse(salesData.sales!),
          double.parse(salesData.orderDate!
              .substring(salesData.orderDate!.length - 4))));
      yearList
          .add(salesData.orderDate!.substring(salesData.orderDate!.length - 4));
    }

    final Map counts = {};

    yearList.map((e) {
      if (counts.containsKey(e)) {
        counts[e]++;
        dummyData2.add(fl.PieChartSectionData(
            value: counts[e]++, color: Colors.purple, radius: 100));
        print(counts[e]++);
      } else {
        counts[e] = 1;
        dummyData2.add(fl.PieChartSectionData(
            value: counts[e], color: Colors.purple, radius: 100));
      }
    });

    return Scaffold(
      appBar: AppBar(title:const Text("Data List"),centerTitle: true,),
      body: Material(
        child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Visibility(
              visible: fetchSalesData.isNotEmpty == true,
              replacement: const CircularProgressIndicator.adaptive(),
              child: ListView.builder(itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(
                    fetchSalesData.elementAt(index).orderDate!.substring(
                        fetchSalesData.elementAt(index).orderDate!.length - 4),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    fetchSalesData.elementAt(index).sales!,
                    textAlign: TextAlign.center,
                  ),
                );
              })),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChartPage(
                        data: data,
                        dummyData: dummyData,
                        dummyData2: dummyData2,
                      )),
            )),
        child: const Icon(Icons.poll_outlined),
      ),
    );
  }
}
