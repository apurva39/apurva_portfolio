
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMeText({Key key, this.textAlign, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fontSize,bool bold)
  {
    return GoogleFonts.montserrat(
      fontSize: fontSize ?? 16,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }


  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
          "Hi There! I'm Apurva Anand, a Flutter developer, Coder and open source contributor in github.\n\nI have been developing mobile apps for over 5 months now, I develop apps with Cool UI and Well performance. I have worked in teams for various startups and helped them in launching their prototypes, as open source contributor at GitHub and got valuable learning experience.\n\nRight now I'm in 5th Semester of My Graduate degree at ",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
        TextSpan(
          text: "Chandigarh Engineering Colleges, Landran",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, true)
              : _textStyle(fontSize + 2, true),
        ),
        TextSpan(
          text: ", And active ",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
        TextSpan(
          text: "Student Of B.tech,",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, true)
              : _textStyle(fontSize + 2, true),
        ),


      ]),
    );
  }
}
