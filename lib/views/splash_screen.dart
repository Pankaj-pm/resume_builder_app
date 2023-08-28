import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder_app/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    print("Hello --");
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, homePage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.grey,
            Color(0xff6aaf50),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Center(
          child: Image.asset("images/phone.png", width: 200, height: 200),
        ),
      ),
    );
  }
}
