import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/pages/checkout.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/secondary_buttons.dart';

class SaverPacksPage extends StatelessWidget {
  static const routeName = 'saverPacksPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Choose your saver Pack'.toUpperCase(),
        style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20),
      )),
      body: Container(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (b, i) {
          return Wrap(
            children: <Widget>[_transactionItem(b, i)],
          );
        },
        itemCount: 3,
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
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF0F61FD),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Text('Nectarine 300',
                      style: GoogleFonts.ibmPlexSans()
                          .copyWith(fontSize: 20, color: Color(0xFFF3F3F3))),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Pay ₹300 and get ₹400',
                      style: GoogleFonts.ibmPlexSans()
                          .copyWith(fontSize: 20, color: Color(0xFFF3F3F3))),
                  SizedBox(
                    height: 8,
                  ),
                  Text('30 days',
                      style: GoogleFonts.ibmPlexMono()
                          .copyWith(fontSize: 12, color: Color(0xFFF3F3F3))),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      'Applicable for both MOVE\n& MIRACLE\n\nValid for 30 Days\n\nSaver packs are\nnon-refundable',
                      style: GoogleFonts.ibmPlexMono().copyWith(fontSize: 12)),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(ctx).size.width * .5,
              child: SecondaryButton(
                onPressed: () {
                  Navigator.of(ctx).pushNamed(CheckoutPage.routeName);
                },
                type: ButtonType.Default,
                text: 'Buy Now',
              ),
            )
          ],
        ),
      ),
    );
  }
}
