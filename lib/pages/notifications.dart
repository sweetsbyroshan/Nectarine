import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/pages/checkout.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/secondary_buttons.dart';

class NotificationPage extends StatelessWidget {
  static const routeName = 'notificationPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Notifications'.toUpperCase(),
        style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20),
      )),
      body: Container(
          child: ListView.builder(
        itemBuilder: (b, i) {
          return _transactionItem(b, i);
        },
        itemCount: 13,
        shrinkWrap: true,
      )),
    );
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
            Text(
                'Nectarine 300',
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
