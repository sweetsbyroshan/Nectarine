import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectarine/widgets/input.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = 'profilePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'PROFILE',
        style: GoogleFonts.ibmPlexSans().copyWith(fontSize: 20),
      )),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 100,
                      color: Color(0xFF0F61FD),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ]),
              Positioned.fill(
                left: 4,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    width: 108,
                    height: 108,
                  ),
                ),
              ),
              Positioned.fill(
                left: 8,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.cover,
                        )),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: <Widget>[
                InputField(
                  type: TextInputType.text,
                  label: 'Name',
                ),
                SizedBox(
                  height: 10,
                ),
                InputField(
                  type: TextInputType.emailAddress,
                  label: 'Email',
                ),
                SizedBox(
                  height: 10,
                ),
                InputField(
                  type: TextInputType.phone,
                  label: 'Mobile',
                ),
                SizedBox(
                  height: 10,
                ),
                InputField(
                  type: TextInputType.text,
                  label: 'Password',
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
          )
        ],
      ),
    );
  }
}
