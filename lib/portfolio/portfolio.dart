import 'package:apurva_portfolio_new/portfolio/portfolioDesktop.dart';
import 'package:apurva_portfolio_new/portfolio/portfolioMobile.dart';
import 'package:flutter/cupertino.dart';

import '../screen_type_builder.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeBuilder(
      tab: PortfolioMobile(),
      mobile: PortfolioMobile(),
      desktop: PortfolioDesktop(),
    );
  }
}
