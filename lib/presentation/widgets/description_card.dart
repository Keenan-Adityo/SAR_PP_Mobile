import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sar_pp_mobile/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardBloc, DashboardState, DashboardState>(
      selector: (state) {
        return state;
      },
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: state.reportsData.length,
          itemBuilder: (context, index) {
            var data = state.reportsData[index];
            return Container(
              margin: EdgeInsets.only(top: 12),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(1, 3),
                    spreadRadius: 2,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.salesMonth,
                    style: kText,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Target: " + data.target.toStringAsFixed(2),
                        style: kSubText,
                      ),
                      Text(
                        "Realisasi: " + data.realisasi.toStringAsFixed(2),
                        style: kSubText,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        (data.realisasi / data.target * 100 > 110)
                            ? "110%"
                            : (data.realisasi / data.target * 100)
                                    .toStringAsFixed(2) +
                                "%",
                        style: kText.copyWith(
                            color: (data.realisasi / data.target * 100 < 100)
                                ? Colors.red
                                : Colors.green),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        (data.realisasi / data.target * 100 < 100)
                            ? EvaIcons.closeCircleOutline
                            : EvaIcons.checkmarkCircle2Outline,
                        color: (data.realisasi / data.target * 100 < 100)
                            ? Colors.red
                            : Colors.green,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
