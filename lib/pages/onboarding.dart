import 'package:flutter/material.dart';
import 'package:infoo/constants.dart';
import 'package:infoo/pages/home.dart';
import 'package:infoo/widgets/button_widget.dart';

import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);
  static String onboardingPageRoute = 'OnboardingPage';

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "HNG Internship 8",
          body: 'A fast paced and challenging learning experience! ',
          image: _buildImage('assets/hng.png'),
          decoration: _getPageDecoration(),
        ),
        PageViewModel(
          title: '',
          body: 'Empowering young African tech talents',
          image: _buildImage('assets/i4g_logo.png'),
          decoration: _getPageDecoration(),
        ),
        PageViewModel(
          title: "",
          body: 'Learn, Build, Grow!',
          image: _buildImage('assets/zuri.png'),
          footer: ButtonWidget(
            text: 'Enroll Now',
            onPressed: () {
              _goToHome(context);
            },
          ),
          decoration: _getPageDecoration(),
        ),
      ],
      showSkipButton: true,
      skip: const Text(
        'Skip',
        style: kOnBoardingFooterTextStyle,
      ),
      showNextButton: false,
      skipFlex: 0,
      nextFlex: 0,
      dotsDecorator: _getDotsDecorator(),
      done: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Enroll now",
            style: kOnBoardingFooterTextStyle,
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.red,
          )
        ],
      ),
      onDone: () {
        _goToHome(context);
      },
    );
  }
}

Future _goToHome(context) {
  return Navigator.pushReplacementNamed(context, HomePage.homePageRoute);
}

Widget _buildImage(String path) {
  return Center(
    child: Image.asset(
      path,
      width: 350,
    ),
  );
}

DotsDecorator _getDotsDecorator() {
  return DotsDecorator(
      color: Colors.red,
      size: Size(10, 10),
      activeSize: Size(20, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ));
}

PageDecoration _getPageDecoration() {
  return PageDecoration(
    bodyTextStyle: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
    ),
    titleTextStyle: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    imagePadding: EdgeInsets.all(20.0),
    descriptionPadding: EdgeInsets.symmetric(horizontal: 16.0),
    pageColor: Colors.white,
  );
}
