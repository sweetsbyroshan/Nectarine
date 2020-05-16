import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/widgets/groupings.dart';

class TariffPage extends StatelessWidget {
  static const routeName = 'tariffPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Tariff',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Groupings(data: ['Miracle', 'Move'], onSwitch: (c) {}),
            SizedBox(
              height: 10,
            ),
            Text(
              'Security Deposit',
              style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 16),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFFF3F3F3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('₹100',
                          style: GoogleFonts.ibmPlexSans().copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color(0xFF383838))),
                      Text(
                        'refundable',
                        style: GoogleFonts.ibmPlexSans().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF3DBA61)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text('Security Deposit Is Mandatory To \nTake Rides'),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ride Charges',
              style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Container(
                  color: Color(0xFF0F61FD),
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '₹10',
                        style: GoogleFonts.ibmPlexSans(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'first 30 minutes',
                        style: GoogleFonts.ibmPlexSans(fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '12',
                        style: GoogleFonts.ibmPlexSans(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'every next 30 minutes',
                        style: GoogleFonts.ibmPlexSans(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Pause Charges',
              style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Container(
                  color: Color(0xFF0F61FD),
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '₹5',
                        style: GoogleFonts.ibmPlexSans(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'per 30 minutes',
                        style: GoogleFonts.ibmPlexSans(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
