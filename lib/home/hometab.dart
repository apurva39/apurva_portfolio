import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:apurva_portfolio_new/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/socialMediaIcon.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(

            height: height * 1.0,
            bottom: width < 740 ? height * 0.1 : -height * 0.1,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
              child: Opacity(

                  opacity: 0.7,
              child:Image.asset('assets/9th.png',height: height * 0.75),

              ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.min,
                  children: [
                    Text(
                      "WELCOME TO MY E-PORTFOLIO ! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.03, fontWeight: FontWeight.w300),
                    ),
                    Image.asset("assets/hi.gif",
                      height: height * 0.05,)
                  ],
                ),
                Text(
                  "Apurva",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.5),
                ),
                Text(
                  "Anand",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    TyperAnimatedTextKit(
                      isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 80),
                        textStyle: GoogleFonts.montserrat(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.w200),
                        text: [
                          " Flutter App Developer",
                          " Competitive Programmer",
                          " Front End Developer",
                          " ECE Undergrad at CGC",
                          "Adaptable",
                          "Eat Sleep Code Repeat"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
