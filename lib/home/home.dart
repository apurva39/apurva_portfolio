import 'package:flutter/material.dart';

import '../screen_type_builder.dart';
import 'homeDestop.dart';
import 'homeMobile.dart';
import 'hometab.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeBuilder(
      mobile: HomeMobile(),
      tab: HomeTab(),
      desktop: HomeDesktop(),

    );
  }
}


