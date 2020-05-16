import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/pages/checkout.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/ghost_button.dart';
import 'package:nectarine/widgets/button/secondary_buttons.dart';

import 'transactions.dart';

class NMoneyPage extends StatelessWidget {
  static const routeName = 'nMoneyPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'NECTARINE MONEY',
        style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20),
      )),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Color(0xFF0F61FD),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '58.00',
                                  style: GoogleFonts.ibmPlexSans().copyWith(
                                      fontSize: 28, color: Color(0xFFF3F3F3)),
                                ),
                                Text('Available balance',
                                    style: GoogleFonts.ibmPlexSans().copyWith(
                                        fontSize: 12, color: Color(0xFFF3F3F3)))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Security Deposit',
                                        style: GoogleFonts.ibmPlexSans()
                                            .copyWith(
                                                fontSize: 12,
                                                color: Color(0xFFF3F3F3))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('250',
                                        style: GoogleFonts.ibmPlexSans()
                                            .copyWith(
                                                fontSize: 12,
                                                color: Color(0xFFF3F3F3)))
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Color(0xFFF3F3F3),
                                  child: Text('Paid',
                                      style: GoogleFonts.ibmPlexSans().copyWith(
                                          fontSize: 12,
                                          color: Color(0xFF0F61FD))),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 6),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '58.00',
                                  style: GoogleFonts.ibmPlexSans().copyWith(
                                      fontSize: 12, color: Color(0xFFF3F3F3)),
                                ),
                                Text('Cash',
                                    style: GoogleFonts.ibmPlexSans().copyWith(
                                        fontSize: 12, color: Color(0xFFF3F3F3)))
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '0',
                                  style: GoogleFonts.ibmPlexSans().copyWith(
                                      fontSize: 12, color: Color(0xFFF3F3F3)),
                                ),
                                Text('eCash',
                                    style: GoogleFonts.ibmPlexSans().copyWith(
                                        fontSize: 12, color: Color(0xFFF3F3F3)))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Positioned(
                left: 10,
                bottom: 0,
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    child: SecondaryButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(CheckoutPage.routeName);
                      },
                      text: 'Add Money',
                      icon: Icons.add,
                      type: ButtonType.With_Icon,
                    ),
                  ),
                ]),
              ),
            ]),
            GhostButton(
              type: ButtonType.With_Icon,
              text: 'View Transactions',
              icon: Icons.arrow_right,
              onPressed: () {
                Navigator.of(context).pushNamed(TransactionsPage.routeName);
              },
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFF3F3F3),
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    'SUPER SAVER PACK',
                    style: GoogleFonts.ibmPlexMono(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Save more with super\nsaver pack',
                        style: GoogleFonts.ibmPlexSans(fontSize: 20),
                      ),
                      Icon(
                        Icons.shopping_basket,
                        size: 50,
                        color: Color(0xFF0F61FD),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'click here to know more',
                    style: GoogleFonts.ibmPlexMono().copyWith(
                        color: Color(0xFF0F61FD),
                        fontSize: 16,
                        decoration: TextDecoration.underline),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}
