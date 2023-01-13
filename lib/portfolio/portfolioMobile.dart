import 'package:apurva_portfolio_new/constants.dart';
import 'package:apurva_portfolio_new/widgets/projectCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMobile extends StatelessWidget {
  const PortfolioMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Text('\nPortfolio',
          style: GoogleFonts.montserrat(
            fontSize: height*0.06,
            fontWeight: FontWeight.w100,
            letterSpacing: 1.0,
          ),
          ),
          Text(
            "Here some of my beautiful works:)\n\n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w200,
              letterSpacing: 1.0,
            ),
          ),
          CarouselSlider.builder(
              itemCount: 5,
            itemBuilder: (BuildContext context, int index ,int i)=>
            Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
            child: ServicesCard1(

              projectWidth: width<650 ? width*0.8 :width*0.5,
              projectIcon: kServicesIcons1[i],
              projectTitle: kServicesTitles1[i],
              projectDescription: kServicesDescriptions1[i],
              projectLink: kServicesLinks1[i],

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
