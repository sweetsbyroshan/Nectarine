import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/pages/transaction_details.dart';

class TransactionsPage extends StatelessWidget {
  static const routeName = 'transactionsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'TRANSACTION HISTORY',
        style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20),
      )),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemBuilder: (b, i) {
              return _transactionItem(b, i);
            },
            itemCount: 10,
            shrinkWrap: true,
          )),
    );
  }

  Widget _transactionItem(ctx, i) {
    return GestureDetector(
      onTap: () {
        Navigator.of(ctx).pushNamed(TransactionDetailsPage.routeName);
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.all(4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Color(0xFF0F61FD),
                  width: 40,
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Vehicle Number: 5003501',
                      style: GoogleFonts.ibmPlexMono()
                          .copyWith(fontSize: 12, color: Color(0xFF383838)),
                    ),
                    Text('Paid for Ride',
                        style: GoogleFonts.ibmPlexSans().copyWith(
                            fontSize: 16,
                            color: Color(0xFF383838),
                            fontWeight: FontWeight.w600)),
                    Row(
                      children: <Widget>[
                        Text('13 mins',
                            style: GoogleFonts.ibmPlexSans().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF383838))),
                        SizedBox(width: 6),
                        Text('13 March 2020, 03:56 PM',
                            style: GoogleFonts.ibmPlexSans().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF383838))),
                      ],
                    )
                  ],
                ),
                Text('- ₹26.00',
                    style: GoogleFonts.ibmPlexSans().copyWith(
                        fontSize: 16,
                        color: Color(0xFF383838),
                        fontWeight: FontWeight.w600)),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
