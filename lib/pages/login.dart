import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/primary_buttons.dart';
import 'package:nectarine/widgets/input.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  static const routeName = 'loginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Nectarine',
              style: GoogleFonts.ibmPlexSans().copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF0F61FD))),
          Text('Moving India \ntowards a\nsustainable future',
              style: GoogleFonts.ibmPlexMono()
                  .copyWith(fontSize: 14, color: Color(0xFF383838))),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * .65,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Wrap(
                    children: <Widget>[
                      Text('Get Started with Nectarine',
                          style: GoogleFonts.ibmPlexMono().copyWith(
                              fontSize: 14, color: Color(0xFF383838))),
                      SizedBox(
                        height: 10,
                      ),
                      InputField(
                        label: 'Enter mobile number',
                        type:TextInputType.number
                      )
                    ],
                  ),
                ),
                PrimaryButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomePage.routeName);
                  },
                  text: 'Continue\n',
                  weight: ButtonWeight.Default,
                  type: ButtonType.Default,
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage('assets/getstarted.png')),
      ),
    ));
  }
}
