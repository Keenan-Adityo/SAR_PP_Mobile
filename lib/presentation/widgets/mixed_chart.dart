import 'package:flutter/material.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MixedChart extends StatefulWidget {
  const MixedChart({Key? key}) : super(key: key);

  @override
  State<MixedChart> createState() => _MixedChartState();
}

class _MixedChartState extends State<MixedChart> {
  late List<SalesData> _chartData;
  @override
  void initState() {
    super.initState();
    _chartData = getChartData();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      legend: const Legend(isVisible: true),
      primaryXAxis: const CategoryAxis(title: AxisTitle(text: 'Bulan')),
      primaryYAxis: const NumericAxis(title: AxisTitle(text: 'Sales')),
      zoomPanBehavior: ZoomPanBehavior(
          enablePinching: true,
          enableDoubleTapZooming: true,
          enableSelectionZooming: true,
          selectionRectBorderColor: Colors.red,
          selectionRectBorderWidth: 2,
          selectionRectColor: Colors.grey,
          enablePanning: true,
          zoomMode: ZoomMode.x,
          enableMouseWheelZooming: true,
          maximumZoomLevel: 0.7),
      series: <CartesianSeries>[
        ColumnSeries<SalesData, String>(
            pointColorMapper: (datum, index) {
              if (datum.sales >= datum.profit) {
                return Colors.green;
              } else {
                return Colors.red;
              }
            },
            name: 'Realisasi',
            dataSource: _chartData,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              textStyle: kText,
            ),
            enableTooltip: true,
            xValueMapper: (SalesData sales, _) => sales.salesMonth,
            yValueMapper: (SalesData sales, _) => sales.sales),
        LineSeries<SalesData, String>(
          name: 'Target',
          dataSource: _chartData,
          xValueMapper: (SalesData sales, _) => sales.salesMonth,
          yValueMapper: (SalesData sales, _) => sales.profit,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
          ),
          enableTooltip: true,
        ),
      ],
    );
  }

  List<SalesData> getChartData() {
    return <SalesData>[
      SalesData('Jan', 171.93, 171.83),
      SalesData('Feb', 329.87, 337.02),
      SalesData('Mar', 504.92, 514.12),
      SalesData('Apr', 676.39, 691.50),
      SalesData('Mei', 858.98, 874.79),
      SalesData('Jun', 1033.39, 1057.29),
      SalesData('Jul', 1209.66, 1241.07),
      SalesData('Agu', 1384.36, 1425.04),
      SalesData('Sep', 1554.83, 1607.26),
      SalesData('Okt', 1745.97, 1791.32),
      SalesData('Nov', 1930.63, 1970.78),
      SalesData('Des', 2122.51, 2146.34),
    ];
  }
}

class SalesData {
  SalesData(this.salesMonth, this.sales, this.profit);
  final String salesMonth;
  final double sales;
  final double profit;
}
