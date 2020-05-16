import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/widgets/button/button_type.dart';
import 'package:nectarine/widgets/button/ghost_button.dart';
import 'package:nectarine/widgets/button/primary_buttons.dart';
import 'package:nectarine/widgets/input.dart';

class CheckoutPage extends StatelessWidget {
  static const routeName = 'checkoutPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'NECTARINE MONEY',
        style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20),
      )),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                  color: Color(0xFF0F61FD),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Available Balance',
                        style: GoogleFonts.ibmPlexSans()
                            .copyWith(color: Color(0xFFF3F3F3), fontSize: 20),
                      ),
                      Text('₹ 58.00',
                          style: GoogleFonts.ibmPlexSans().copyWith(
                              color: Color(0xFFF3F3F3), fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Select top up amount',
                        style: GoogleFonts.ibmPlexMono()
                            .copyWith(color: Color(0xFF383838), fontSize: 16),
                      ),
                      Row(
                        // direction: Axis.horizontal,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: GhostButton(
                              type: ButtonType.Default,
                              text: '+50',
                              onPressed: () {},
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: GhostButton(
                              type: ButtonType.Default,
                              text: '+100',
                              onPressed: () {},
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: GhostButton(
                              type: ButtonType.Default,
                              text: '+200',
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: InputField(
                          type: TextInputType.number,
                          label: 'Top-up',
                        ),
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                      Divider(),
                      Row(
                        // direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('TOTAL AMOUNT TO BE PAID ',
                              style: GoogleFonts.ibmPlexMono().copyWith(
                                  color: Color(0xFF383838), fontSize: 16)),
                          Text('0',
                              style: GoogleFonts.ibmPlexMono().copyWith(
                                  color: Color(0xFF383838), fontSize: 16))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            PrimaryButton(
              onPressed: () {},
              text: 'Pay Now\n',
              type: ButtonType.Default,
            )
          ],
        ),
      ),
    );
  }
}
