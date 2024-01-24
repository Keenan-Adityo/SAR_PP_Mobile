import 'package:flutter/material.dart';
import 'package:sar_pp_mobile/presentation/widgets/description_card.dart';
import 'package:sar_pp_mobile/presentation/widgets/persistent_sliver_delegate.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';

class ULPPage extends StatelessWidget {
  const ULPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Penjualan",
          style: kHeading1,
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentSliverDelegate(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(20),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deskripsi",
                        style: kHeading2.copyWith(fontWeight: FontWeight.w600),
                      ),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                      DescriptionCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
