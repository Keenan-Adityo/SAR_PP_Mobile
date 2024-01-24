import 'package:flutter/material.dart';
import 'package:sar_pp_mobile/presentation/widgets/mixed_chart.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';

class PersistentSliverDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              "Data Tahunan",
              style: kHeading2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              "Laporan Penjualan Tenaga Listrik",
              style: kHeading2,
            ),
          ),
          MixedChart(),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 390;

  @override
  double get minExtent => 390;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
