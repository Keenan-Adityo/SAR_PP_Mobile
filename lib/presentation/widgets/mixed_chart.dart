import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sar_pp_mobile/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MixedChart extends StatefulWidget {
  const MixedChart({super.key});

  @override
  State<MixedChart> createState() => _MixedChartState();
}

class _MixedChartState extends State<MixedChart> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardBloc, DashboardState, DashboardState>(
      selector: (state) {
        return state;
      },
      builder: (context, state) {
        return SfCartesianChart(
          legend: const Legend(isVisible: true),
          primaryXAxis: const CategoryAxis(title: AxisTitle(text: 'Bulan')),
          primaryYAxis: const NumericAxis(title: AxisTitle(text: 'Gwh')),
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
            ColumnSeries<ReportsData, String>(
                pointColorMapper: (datum, index) {
                  if (datum.realisasi >= datum.target) {
                    return Colors.green;
                  } else {
                    return Colors.red;
                  }
                },
                name: 'Realisasi',
                dataSource: state.reportsData,
                enableTooltip: true,
                xValueMapper: (ReportsData sales, _) => sales.salesMonth,
                yValueMapper: (ReportsData sales, _) => sales.realisasi),
            LineSeries<ReportsData, String>(
              name: 'Target',
              dataSource: state.reportsData,
              xValueMapper: (ReportsData sales, _) => sales.salesMonth,
              yValueMapper: (ReportsData sales, _) => sales.target,
              enableTooltip: true,
            ),
          ],
        );
      },
    );
  }
}

class ReportsData {
  ReportsData(this.salesMonth, this.realisasi, this.target);
  final String salesMonth;
  final double realisasi;
  final double target;
}
