import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sar_pp_mobile/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:sar_pp_mobile/presentation/widgets/custom_drawer.dart';
import 'package:sar_pp_mobile/presentation/widgets/description_card.dart';
import 'package:sar_pp_mobile/presentation/widgets/monthly_card.dart';
import 'package:sar_pp_mobile/presentation/widgets/persistent_sliver_delegate.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';
import 'package:sar_pp_mobile/utils/office.dart';

class UP3Page extends StatelessWidget {
  const UP3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: DropdownMenu<Office>(
        initialSelection: Office.up3,
        requestFocusOnTap: true,
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
        ),
        textStyle: kHeading2,
        onSelected: (value) {
          if (Office.values.contains(value)) {
            BlocProvider.of<DashboardBloc>(context).add(onChangeOffice(value!));
          }
        },
        dropdownMenuEntries:
            Office.values.map<DropdownMenuEntry<Office>>((Office office) {
          return DropdownMenuEntry<Office>(
            value: office,
            label: office.name,
          );
        }).toList(),
      )),
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text(
                    "Data Bulan Terakhir",
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
              ],
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentSliverDelegate(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
