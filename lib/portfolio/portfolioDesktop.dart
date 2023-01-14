import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


import '../animations/bottomAnimatio.dart';
import '../constants.dart';
import '../widgets/projectCard.dart';
import '../widgets/servicesCard.dart';

class PortfolioDesktop extends StatelessWidget {
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
            "\nPortfolio",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Here some of my beautiful works :)\n\n",
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
                    child: ServicesCard1(
                      projectWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      projectHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      projectIcon: kServicesIcons1[0],
                      projectTitle: kServicesTitles1[0],
                      projectDescription: kServicesDescriptions1[0],
                      projectLink: kServicesLinks1[0],

                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServicesCard1(
                      projectWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      projectHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      projectIcon: kServicesIcons1[1],
                      projectTitle: kServicesTitles1[1],
                      projectDescription: kServicesDescriptions1[1],
                      projectLink: kServicesLinks1[1],

                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServicesCard1(
                      projectWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      projectHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      projectIcon: kServicesIcons1[2],
                      projectTitle: kServicesTitles1[2],
                      projectDescription: kServicesDescriptions1[2],
                      projectLink: kServicesLinks1[2],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  WidgetAnimator(
                    child: ServicesCard1(
                      projectWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      projectHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      projectIcon: kServicesIcons1[3],
                      projectTitle: kServicesTitles1[3],
                      projectDescription: kServicesDescriptions1[3],
                      projectLink: kServicesLinks1[3],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServicesCard1(
                      projectWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      projectHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      projectIcon: kServicesIcons1[4],
                      projectTitle: kServicesTitles1[4],
                      projectDescription: kServicesDescriptions1[4],
                      projectLink: kServicesLinks1[4],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  WidgetAnimator(
                    child: ServicesCard1(
                      projectWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      projectHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      projectIcon: kServicesIcons1[5],
                      projectTitle: kServicesTitles1[5],
                      projectDescription: kServicesDescriptions1[5],
                      projectLink: kServicesLinks1[5],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
