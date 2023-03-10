import 'package:apurva_portfolio_new/widgets/contactCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../widgets/projectCard.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
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
            "Let's get in touch and build something together :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          ),
          CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index, int i) =>
                  Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: ContactCard(

                        cardWidth: width > 480 ? width * 0.5 : width * 0.8,
                        contactIcon: kContactIcons[i],
                        contactTitle: kContactTitles[i],
                        contactDescription: kContactDetails[i],
                      ),
          ),
              options:
              CarouselOptions(
                  height: height * 0.3,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  enableInfiniteScroll: false),
                  )
        ],
      ),
    );
  }
}
