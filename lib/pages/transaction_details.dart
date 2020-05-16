import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/ghost_button.dart';

class TransactionDetailsPage extends StatelessWidget {
  static const routeName = 'transactionDetailsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Color(0xFF0F61FD),
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        color: Color(0xFF0F61FD),
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Vehicle Number: 5003501',
                            style: GoogleFonts.ibmPlexMono()
                                .copyWith(fontSize: 16),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '13 mins',
                                style: GoogleFonts.ibmPlexSans()
                                    .copyWith(fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('13 March 2020, 03:56 PM',
                                  style: GoogleFonts.ibmPlexMono()
                                      .copyWith(fontSize: 12))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '₹26.00',
                        style: GoogleFonts.ibmPlexSans().copyWith(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Distance',
                                style: GoogleFonts.ibmPlexMono().copyWith(
                                    color: Color(0xFF0F61FD), fontSize: 14)),
                            Text('181 km',
                                style: GoogleFonts.ibmPlexMono().copyWith(
                                    color: Color(0xFF383838), fontSize: 14)),
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
                                style: GoogleFonts.ibmPlexMono().copyWith(
                                    color: Color(0xFF0F61FD), fontSize: 14)),
                            Text('816 Cal',
                                style: GoogleFonts.ibmPlexMono().copyWith(
                                    color: Color(0xFF383838), fontSize: 14)),
                          ],
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  GhostButton(
                    type: ButtonType.With_Icon,
                    icon: Icons.arrow_right,
                    text: 'Send invoice to e-mail',
                    onPressed: () {},
                  ),
                  Container(
                    color: Color(0xFFF3F3F3),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Ride Start Time',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('01:22 PM, 13 Mar 20',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Ride End Time',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('01:36 PM, 13 Mar 20',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Ride Time',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('13 Mins',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Pause Time(charged)',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('0 mins',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Total time (charged)',
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 16, color: Color(0xFF0F61FD))),
                              Text('13  Mins',
                                  style: GoogleFonts.ibmPlexSans(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text('FARE BREAKDOWN',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    color: Color(0xFFF3F3F3),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Base Fare',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('₹5',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Trip Fare',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('₹21',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: List.generate(
                              250 ~/ 5,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.black26,
                                      height: 1,
                                    ),
                                  )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('SubTotal',
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 16,
                                          color: Color(0xFF0F61FD))),
                                  Container(
                                    margin: EdgeInsets.only(left: 30),
                                    child: Text('Cash(taxable)',
                                        style: GoogleFonts.ibmPlexSans(
                                            fontSize: 12)),
                                  ),
                                ],
                              ),
                              Text('₹26.00',
                                  style: GoogleFonts.ibmPlexSans(fontSize: 16)),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Total Fare',
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 16, color: Color(0xFF0F61FD))),
                              Text('₹26.00',
                                  style: GoogleFonts.ibmPlexSans(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Text('TAX BREAKDOWN',
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    color: Color(0xFFF3F3F3),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Before Tax',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('₹22.04',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('CGST(9.0%)',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('₹1.98',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('SGST/UTGST (9.0%)',
                                  style: GoogleFonts.ibmPlexMono(
                                      fontSize: 14, color: Color(0xFF0F61FD))),
                              Text('₹1.98',
                                  style: GoogleFonts.ibmPlexMono(fontSize: 14)),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          margin: EdgeInsets.all(4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Total',
                                  style: GoogleFonts.ibmPlexSans(
                                      fontSize: 16, color: Color(0xFF0F61FD))),
                              Text('₹26.00',
                                  style: GoogleFonts.ibmPlexSans(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
