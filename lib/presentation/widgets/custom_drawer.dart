import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sar_pp_mobile/presentation/pages/ulp_page.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';

class CustomDrawer extends StatelessWidget {
  final List<String> reports = [
    "Laporan Penjualan Tenaga Listrik",
    "Laporan Pendapatan Tenaga Listrik",
    "Penurunan Feedback Rating Negatif pada PLN Mobile",
    "Laporan Penambahan Instalasi",
    "Respon & Recovery Time",
    "Hari Pelayanan Pelanggan",
    "Penyambungan Pelanggan Rumah Tangga",
    "Pengendalian Piutang Rata-Rata Saldo RETUR",
    "Pengendalian Piutang Rata-Rata Saldo Tunggakan",
    "Penurunan Saldo Piutang Prabayar",
  ];

  CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Laporan ULP",
                    style: kHeading1,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        EvaIcons.close,
                      ))
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: reports.length,
                  itemBuilder: (context, index) {
                    var data = reports[index];
                    return ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        data,
                        style: kHeading3,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ULPPage(),
                            ));
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
