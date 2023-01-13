// import 'package:apurva_portfolio_new/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ServicesCard1 extends StatefulWidget {
//   final IconData contactIcon;
//   final String contactTitle;
//   final String contactDescription;
//
//   final double cardWidth;
//   final double cardHeight;
//
//
//   const ServicesCard1({Key key,  this.cardWidth, this.cardHeight, this.contactIcon, this.contactTitle, this.contactDescription}) : super(key: key);
//
//   @override
//   State<ServicesCard1> createState() => _ServicesCard1State();
// }
//
// class _ServicesCardState extends State<ServicesCard1> {
//   bool isHover=false;
//   @override
//   Widget build(BuildContext context) {
//     double height=MediaQuery.of(context).size.height;
//     double width=MediaQuery.of(context).size.width;
//     return InkWell(
//       onTap: ()=>launch(widget.contactDescription),
//       onHover: (isHovering)
//       {
//         if(isHovering)
//         {
//           setState(() {
//             isHover=true;
//           });
//
//         }
//         else
//         {
//           setState(() {
//             isHover=false;
//           });
//         }
//       },
//       child: Container(
//         width: widget.cardWidth,
//         height: widget.cardHeight,
//         padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
//         decoration: BoxDecoration(
//             color: Colors.grey[900],
//             borderRadius: BorderRadius.circular(10.0),
//             boxShadow: isHover
//                 ? [
//               BoxShadow(
//                 color: kPrimaryColor.withAlpha(300),
//                 blurRadius: 12.0,
//                 offset: Offset(2.0,3.0),
//               )
//             ]
//                 :[]
//         ),
//
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(widget.contactIcon,
//             ),
//             // Image.asset(
//             //   widget.contactIcon,
//             //   height: height * 0.1,
//             // ),
//             SizedBox(
//               height: height * 0.04,
//             ),
//             Text(
//               widget.contactTitle,
//               textAlign: TextAlign.center,
//               style: GoogleFonts.montserrat(
//                 fontSize: height * 0.02,
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             SizedBox(
//               height: height * 0.01,
//             ),
//             Expanded(
//               child: Text(
//                 widget.contactDescription,
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.montserrat(
//                     fontSize: height * 0.015,
//                     letterSpacing: 2.0,
//                     fontWeight: FontWeight.w100,
//                     height: width < 900 ? 2.3 : 1.5),
//               ),
//             )
//           ],
//         ),
//
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class ContactCard extends StatefulWidget {
  final IconData contactIcon;
  final String contactTitle;
  final String contactDescription;

  final double cardWidth;
  final double cardHeight;


  const ContactCard({Key key,  this.cardWidth, this.cardHeight, this.contactIcon, this.contactTitle, this.contactDescription}) : super(key: key);



  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return InkWell(
      onTap: ()=>launch(widget.contactDescription),
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
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: isHover
                ? [
              BoxShadow(
                color: kPrimaryColor.withAlpha(300),
                blurRadius: 12.0,
                offset: Offset(2.0,3.0),
              )
            ]
                :[]
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.contactIcon,
            ),
            // Image.asset(
            //   widget.contactIcon,
            //   height: height * 0.1,
            // ),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              widget.contactTitle,
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
                widget.contactDescription,
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
