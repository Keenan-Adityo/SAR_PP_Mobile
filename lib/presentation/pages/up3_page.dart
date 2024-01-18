import 'package:flutter/material.dart';
import 'package:sar_pp_mobile/presentation/widgets/monthly_card.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';

class UP3Page extends StatelessWidget {
  const UP3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "UP3 Purwokerto",
          style: kHeading1,
        ),
      ),
      drawer: Container(
        color: Colors.white,
        child: Text("hai"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                "Data Bulan Terakhir UP 3 Purwokerto",
                style: kHeading2,
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      MonthlyCard(),
                      MonthlyCard(),
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      MonthlyCard(),
                      MonthlyCard(),
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      MonthlyCard(),
                      MonthlyCard(),
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      MonthlyCard(),
                      MonthlyCard(),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                "Data Tahunan UP 3 Purwokerto",
                style: kHeading2,
              ),
            ),
            
          ],

        ),
      ),
    );
  }
}
