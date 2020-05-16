import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/pages/login.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/primary_buttons.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Nectarine',
                  style: GoogleFonts.ibmPlexSans().copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF0F61FD))),
              Text('Moving India \ntowards a\nsustainable future',
                  style: GoogleFonts.ibmPlexMono()
                      .copyWith(fontSize: 14, color: Color(0xFF383838)))
            ],
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.42,
              child: PrimaryButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginPage.routeName);
                },
                text: 'GET STARTED',
                weight: ButtonWeight.Default,
                type: ButtonType.Default,
              ))
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('assets/getstarted.png')),
      ),
    ));
  }
}
