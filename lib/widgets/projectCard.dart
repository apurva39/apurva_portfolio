import 'package:apurva_portfolio_new/constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class ProjectCard extends StatefulWidget {
//   final String projectIcon;
//   // final IconData projectIconData;
//   final String projectTitle;
//   final String projectDescription;
//   final String projectLink;
//   final double projectWidth;
//   final double projectHeight;
//   final String backImage;
//   final Widget bottomWidget;
//
//
//   const ProjectCard({Key key, this.projectIcon, this.projectTitle, this.projectDescription, this.projectLink,  this.backImage, this.projectWidth, this.projectHeight, this.bottomWidget}) : super(key: key);
//
//   @override
//   State<ProjectCard> createState() => _ProjectCardState();
// }
//
// class _ProjectCardState extends State<ProjectCard> {
//   bool isHover=false;
//   @override
//   Widget build(BuildContext context) {
//     double height=MediaQuery.of(context).size.height;
//     double width =MediaQuery.of(context).size.height;
//     return InkWell(
//       // onTap: () => launch(widget.projectLink),
//       onHover: (isHovering)
//       {
//         if(isHovering)
//           {
//             setState(() {
//               isHover=true;
//             });
//           }
//         else{
//           setState(() {
//             isHover=false;
//           });
//         }
//       },
//       child: Container(
//         width: widget.projectWidth,
//         height: widget.projectHeight,
//         padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
//         decoration: BoxDecoration(
//           color: Colors.grey[900],
//           borderRadius: BorderRadius.circular(8.0),
//           boxShadow: isHover ?[
//             BoxShadow(
//               color: kPrimaryColor.withAlpha(200),
//               blurRadius: 12.0,
//               offset: Offset(2.0, 3.0),
//             )
//           ]:[]
//         ),
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 widget.projectIcon !=null ?
//                 Image.asset(widget.projectIcon,
//                 height: height*0.1,)
//                     :Container(),
//                 // widget.projectIconData !=null
//                 // ? Icon(
//                 //   widget.projectIconData,
//                 //   color: kPrimaryColor,
//                 //   size: height *0.1,
//                 // )
//                 //     : Container(),
//                 SizedBox(
//                   height: height * 0.02,
//                 ),
//                 Text(
//                   widget.projectTitle,
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.montserrat(
//                     fontSize: height * 0.02,
//                     letterSpacing: 1.5,
//                     fontWeight: FontWeight.w400,
//                   ),
//
//                 ),
//                 SizedBox(
//                   height: height * 0.01,
//                 ),
//                 Text(
//                   widget.projectDescription,
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.montserrat(
//                     fontSize: height * 0.015,
//                     letterSpacing: 2.0,
//                     fontWeight: FontWeight.w100,
//                     height: width>=600 ?2.0 :1.5,
//                   ),
//
//                 ),
//                 SizedBox(
//                   height: height * 0.01,
//                 ),
//                 widget.bottomWidget ?? Container(),
//                 AnimatedOpacity(
//                   duration: Duration(milliseconds: 500),
//                     opacity: isHover ? 0.0 :1.0,
//                 child: FittedBox(
//                   fit: BoxFit.fill,
//                   child: widget.backImage !=null
//                   ? Image.asset(widget.backImage) :Container(),
//                 ),
//                 )
//
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:apurva_portfolio_new/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesCard1 extends StatefulWidget {
  final String projectIcon;
  final String projectTitle;
  final String projectDescription;
  final String projectLink;
  final double projectWidth;
  final double projectHeight;


  const ServicesCard1({Key key, this.projectIcon, this.projectTitle, this.projectDescription, this.projectLink, this.projectWidth, this.projectHeight}) : super(key: key);

  @override
  State<ServicesCard1> createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard1> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return InkWell(
      onTap: ()=>launch(widget.projectLink),
      onHover: (isHovering)
      {
        if(isHovering)
        {
          setState(() {
            isHover=true;
          });

        }
        else
        {
          setState(() {
            isHover=false;
          });
        }
      },
      child: Container(
        width: widget.projectWidth,
        height: widget.projectHeight,
        padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isHover
                ? [
              BoxShadow(
                color: kPrimaryColor.withAlpha(200),
                blurRadius: 12.0,
                offset: Offset(2.0,3.0),
              )
            ]
                :[]
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.projectIcon,
              height: height * 0.1,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              widget.projectTitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: height * 0.02,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: Text(
                widget.projectDescription,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: height * 0.015,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w100,
                    height: width < 900 ? 2.3 : 1.5),
              ),
            )
          ],
        ),

      ),
    );
  }
}
