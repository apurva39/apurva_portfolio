import 'package:flutter/material.dart';

import 'constants.dart';
import 'mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apurva Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        highlightColor: kPrimaryColor,
      ),
      home: MainPage(),
    );
  }
}
