import 'package:apurva_portfolio_new/constants.dart';
import 'package:apurva_portfolio_new/widgets/servicesCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/projectCard.dart';

class PortfolioMobile extends StatelessWidget {
  const PortfolioMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Text('\nWhat I Do',
            style: GoogleFonts.montserrat(
              fontSize: height*0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "I may not be perfect, but I'm surely of some help :)\n\n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w200,
              letterSpacing: 1.0,
            ),
          ),
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index ,int i)=>
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: ProjectCard(
                    projectLink:kServicesLinks[i],
                    projectTitle: kProjectsTitles[i],
                    projectIcon: kProjectsIcons[i],
                    cardWidth: width<650 ? width*0.8 :width*0.5,


                  ),
                ),
            options: CarouselOptions(
                height: height * 0.45,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),

        ],
      ),
    );
  }
}
