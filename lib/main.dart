import 'package:flutter/material.dart';
import 'package:infoo/pages/display.dart';
import 'package:infoo/pages/home.dart';
import 'package:infoo/pages/onboarding.dart';

void main() {
  runApp(InfooApp());
}

class InfooApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infoo App',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      initialRoute: OnboardingPage.onboardingPageRoute,
      routes: {
        OnboardingPage.onboardingPageRoute: (context) => OnboardingPage(),
        HomePage.homePageRoute: (context) => HomePage(),
        DisplayPage.displayPageRoute: (context) => DisplayPage(),
      },
    );
  }
}
