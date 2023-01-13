import 'package:apurva_portfolio_new/widgets/contactCard.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


import '../animations/bottomAnimatio.dart';
import '../constants.dart';
import '../widgets/servicesCard.dart';

class ContactDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nContact",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Let's get in touch and build something together:)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: width < 1200
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                children: [
                  WidgetAnimator(
                    child: ContactCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      contactIcon: kContactIcons[0],
                      contactTitle: kContactTitles[0],
                      contactDescription: kContactDetails[0],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ContactCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      contactIcon: kContactIcons[1],
                      contactTitle: kContactTitles[1],
                      contactDescription: kContactDetails[1],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ContactCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      contactIcon: kContactIcons[2],
                      contactTitle: kContactTitles[2],
                      contactDescription: kContactDetails[2],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),

            ],
          )
        ],
      ),
    );
  }
}
