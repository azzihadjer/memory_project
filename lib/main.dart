import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projet1/Posts.dart';
import 'package:projet1/pages/login_page.dart';
//import 'package:projet1/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Color primaryColor = HexColor('#DC54FE');
  //Color secondColor = HexColor('#BA02AE');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
