import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/pages/nmoney.dart';
import 'package:nectarine/pages/profile.dart';
import 'package:nectarine/pages/settings.dart';
import 'package:nectarine/pages/tariff.dart';
import 'package:nectarine/pages/transactions.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/ghost_button.dart';
import 'package:nectarine/widgets/button/primary_buttons.dart';
import 'package:nectarine/widgets/button/secondary_buttons.dart';

import 'notifications.dart';
import 'saverpacks.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: _drawer(context)),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                // child: Center(child: Text('I was too lazy to setup a map here.'),),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/map.png'), fit: BoxFit.fill)),
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                right: 20,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: PrimaryButton(
                        onPressed: () {},
                        text: 'Unlock',
                        icon: Icons.camera_rear,
                        type: ButtonType.With_Icon,
                      ),
                      width: MediaQuery.of(context).size.width * .5,
                    ),
                    SizedBox(width: 40,),
                    SecondaryButton(
                      onPressed: () {},
                      icon: Icons.my_location,
                      type: ButtonType.Icon,
                    )
                  ],
                ),
                bottom: 0,
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Builder(builder: (context) {
                  return SecondaryButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    type: ButtonType.Icon,
                    icon: Icons.menu,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _drawer(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProfilePage.routeName);
          },
          child: Container(
              height: 100,
              color: Color(0xFF383838),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 16, bottom: 30),
              child: Text(
                'Emilio W.',
                style: GoogleFonts.ibmPlexSans().copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color(0xFFF3F3F3)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Distance',
                        style: GoogleFonts.ibmPlexMono()
                            .copyWith(color: Color(0xFF0F61FD), fontSize: 14)),
                    Text('181 km',
                        style: GoogleFonts.ibmPlexMono()
                            .copyWith(color: Color(0xFF383838), fontSize: 14)),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Calories',
                        style: GoogleFonts.ibmPlexMono()
                            .copyWith(color: Color(0xFF0F61FD), fontSize: 14)),
                    Text('816 Cal',
                        style: GoogleFonts.ibmPlexMono()
                            .copyWith(color: Color(0xFF383838), fontSize: 14)),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Carbon',
                        style: GoogleFonts.ibmPlexMono()
                            .copyWith(color: Color(0xFF0F61FD), fontSize: 14)),
                    Text('18109 gm',
                        style: GoogleFonts.ibmPlexMono()
                            .copyWith(color: Color(0xFF383838), fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Nectarine Money',
          icon: Icons.account_balance_wallet,
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(NMoneyPage.routeName);
          },
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Ride History',
          icon: Icons.history,
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(TransactionsPage.routeName);
          },
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Tariff',
          icon: Icons.monetization_on,
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(TariffPage.routeName);
          },
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Promotions',
          icon: Icons.speaker_group,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Saver Packs',
          icon: Icons.save_alt,
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(SaverPacksPage.routeName);
          },
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Refer & Earn',
          icon: Icons.share,
          onPressed: () {},
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Notification',
          icon: Icons.notifications,
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(NotificationPage.routeName);
          },
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Help & Support',
          icon: Icons.help_outline,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        GhostButton(
          type: ButtonType.With_Icon,
          text: 'Settings',
          icon: Icons.settings_applications,
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed(SettingsPage.routeName);
          },
        ),
      ],
    ),
  );
}
