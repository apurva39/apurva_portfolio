import 'package:apurva_portfolio_new/screen_type_builder.dart';
import 'package:flutter/material.dart';

import 'aboutDesktop.dart';
import 'aboutMobile.dart';
import 'aboutTab.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeBuilder(
      mobile: AboutMobile(),
      tab: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
