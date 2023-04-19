import 'package:charts_flutter/flutter.dart' as charts;

class DeveloperSeries {
  final int year;
  final int sales;
  final charts.Color barColor;

  DeveloperSeries(
    {
      required this.year,
      required this.sales,
      required this.barColor
    }
  );
}