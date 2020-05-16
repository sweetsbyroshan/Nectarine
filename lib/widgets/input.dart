import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String label;
  final TextInputType type;
  InputField({this.label, this.type});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: GoogleFonts.ibmPlexSans(fontSize: 12),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          constraints: BoxConstraints(minWidth: 100),
          color: Color(0xFFF3F3F3),
          child: TextField(
            keyboardType: type,
            decoration: InputDecoration(border: UnderlineInputBorder()),
            style: GoogleFonts.ibmPlexMono(fontSize: 14),
            
          ),
        )
      ],
    );
  }
}
