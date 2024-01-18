import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sar_pp_mobile/presentation/pages/up3_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/pln-logo.svg"),
            Text("SAR PP Mobile"),
            Text("Massukan Password"),
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
