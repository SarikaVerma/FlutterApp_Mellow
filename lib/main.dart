import 'package:flutter/material.dart';
import 'package:mellow_flutter_app/Constants.dart';

import 'pages/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appColorDark,
        primaryColorLight: appColorLight,
        accentColor: appColorAccent,
      ),
      home: LoginPage(),
    );
  }
}
