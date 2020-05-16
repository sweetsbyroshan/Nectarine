import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/pages/checkout.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/ghost_button.dart';
import 'package:nectarine/widgets/switch.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = 'settingsPage';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool doCall = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Settings'.toUpperCase(),
          style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20),
        )),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xFFF3F3F3),
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Call Notifications',
                            style: GoogleFonts.ibmPlexSans()
                                .copyWith(fontSize: 20)),
                        CDSwitch(
                          onChanged: (b) {
                            setState(() {
                              doCall = b;
                            });
                          },
                          value: doCall,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                'Enable this feature to receive call notification for better ride experience ',
                style: GoogleFonts.ibmPlexMono(),
              ),
              GhostButton(
                text: 'Terms & Condition',
                type: ButtonType.Default,
                onPressed: () {},
              ),
              GhostButton(
                text: 'Privacy Policy',
                type: ButtonType.Default,
                onPressed: () {},
              ),
              GhostButton(
                text: 'Version - V. 1.0.0',
                type: ButtonType.Default,
                onPressed: () {},
              ),
              GhostButton(
                text: 'Log Out',
                type: ButtonType.Default,
                onPressed: () {},
              ),
            ],
          ),
        ));
  }

  Widget _transactionItem(ctx, i) {
    return GestureDetector(
      onTap: () {
        Navigator.of(ctx).pushNamed(CheckoutPage.routeName);
      },
      child: Container(
        color: Color(0xFFF3F3F3),
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nectarine 300',
                style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20)),
            SizedBox(
              height: 8,
            ),
            Text(
                'Applicable for both MOVE & MIRACLEValid for 30 Days Saver packs arenon-refundable',
                style: GoogleFonts.ibmPlexMono().copyWith(fontSize: 12)),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
