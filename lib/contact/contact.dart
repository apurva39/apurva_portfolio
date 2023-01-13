import 'package:apurva_portfolio_new/screen_type_builder.dart';
import 'package:flutter/cupertino.dart';

import 'contactMobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeBuilder(
      mobile: ContactMobile(),
      tab: ContactMobile(),
      desktop: ContactMobile(),

    );
  }
}
