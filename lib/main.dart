// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/buid_option.dart';
import 'package:resume_builder_app/constant.dart';
import 'package:resume_builder_app/views/contact_info.dart';
import 'package:resume_builder_app/views/pdf_screen.dart';
import 'package:resume_builder_app/views/personal_detail.dart';
import 'package:resume_builder_app/views/splash_screen.dart';
import 'package:resume_builder_app/views/technical_skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // App Orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // App status bar
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Colors.blue,
    //     systemNavigationBarDividerColor: Colors.red,
    //     systemNavigationBarColor: Colors.red
    //   ),
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Resume Builder'),
      routes: {
        "/": (context) => SplashScreen(),
        homePage: (context) => MyHomePage(title: 'Resume Builder'),
        buildOption: (context) => BuildOption(title: 'Resume Builder'),
        contactInfo: (context) => ContactInfo(),
        personalDetailRoute: (context) => PersonalDetail(),
        technicalSkillsRoute: (context) => TechnicalSkills(),
        pdfScreenRoute: (context) => PDFScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
        bottom: AppBar(
          title: Text("Resumes".toUpperCase()),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/empty_box.png", height: 150, width: 150),
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, buildOption);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
