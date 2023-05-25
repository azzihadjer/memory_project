import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _splashState();
}

class _splashState extends State<SplashScreen> {
  int count = 0;
  void incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [Theme.of(context).hintColor, Theme.of(context).primaryColor],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: 1.0,
        duration: Duration(milliseconds: 1200),
        child: Center(
          child: Container(
            height: 140.0,
            width: 140.0,
            child: Center(
              child: ClipOval(
                child: Icon(Icons.android_outlined, size: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
