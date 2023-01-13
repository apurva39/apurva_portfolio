import 'package:apurva_portfolio_new/screen_type_builder.dart';
import 'package:apurva_portfolio_new/services/servicesDesktop.dart';
import 'package:apurva_portfolio_new/services/servicesMobile.dart';
import 'package:flutter/cupertino.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeBuilder(
      mobile: ServicesMobile(),
      tab: ServicesMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
