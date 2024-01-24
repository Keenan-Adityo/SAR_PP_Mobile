import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sar_pp_mobile/presentation/pages/dashboard_page.dart';
import 'package:sar_pp_mobile/styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/pln-logo.svg"),
            Text(
              "SAR PP Mobile",
              style: kHeading1,
            ),
            Text(
              "Massukan Password",
              style: kHeading2,
            ),
            TextField(),
            ElevatedButton(
              child: Text("Masuk"),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UP3Page(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
