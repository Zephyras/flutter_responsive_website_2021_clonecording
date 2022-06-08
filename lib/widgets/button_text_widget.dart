import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomText extends StatelessWidget {
  final String? mainText;
  final String? secondText;

  const BottomText({Key? key, this.mainText, this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "$mainText \n"),
        TextSpan(text: secondText, style: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        )),
      ],
      style: GoogleFonts.roboto(
        fontSize: 58,
        fontWeight: FontWeight.bold,
      )),
    );
  }
}
