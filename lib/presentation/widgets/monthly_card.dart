import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';

class MonthlyCard extends StatelessWidget {
  const MonthlyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: 182,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(0, 3),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Penjualan",
                style: kHeading3,
              ),
              Text(
                "Desember 2023",
                style: kText,
              ),
            ],
          ),
          Center(
            child: Text(
              "510.6Gwh",
              style: kHeading2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "T: 123Gwh",
                style: kText,
              ),
              Row(
                children: [
                  Text(
                    "97%",
                    style: kText,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    EvaIcons.arrowCircleDownOutline,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
