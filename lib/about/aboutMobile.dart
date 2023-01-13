import 'package:apurva_portfolio_new/constants.dart';
import 'package:apurva_portfolio_new/widgets/aboutMeText.dart';
import 'package:apurva_portfolio_new/widgets/communityIconBtn.dart';
import 'package:apurva_portfolio_new/widgets/toolTech.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navBar/navBarLogo.dart';

class AboutMobile extends StatelessWidget {
  final _communityLgoHeight=[50.0,60.0,30.0];

  AboutMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text('About Me',
          style: GoogleFonts.montserrat(
            fontSize: height*0.06,
            fontWeight: FontWeight.w100,
            letterSpacing: 1.0,
          ),
          ),
          SizedBox(height: height*0.05,),
          AboutMeText(
            textAlign: TextAlign.center,
            fontSize: 13,
          ),
          SizedBox(height: height*0.03,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for(int i=0;i<kCommunityLogo.length-1;i++)

                  CommunityIconBtn(
                    icon: kCommunityLogo[i],
                    link: kCommunityLinks[i],
                    height: _communityLgoHeight[i],
                  ),

            ],
          ),
          SizedBox(height: height*0.25,),
          ToolsTech(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              NavBarLogo(
                height: height * 0.04,
              )
            ],
          )

        ],
      ),

    );
  }
}
