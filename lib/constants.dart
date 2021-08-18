import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const kOnBoardingFooterTextStyle = TextStyle(
  color: Colors.red,
  fontWeight: FontWeight.w400,
);

const kTextFieldDecoration = InputDecoration(
  labelStyle: TextStyle(
    color: Colors.black,
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
    color: Colors.grey,
    width: 2.0,
  )),
  border: OutlineInputBorder(),
);

Widget kBuildLink({required String link, required String text}) {
  return RichText(
      text: TextSpan(
    children: [
      TextSpan(
          text: text,
          style: TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () async {
              await canLaunch(link)
                  ? await launch(link)
                  : throw "Could not launch $link";
            }),
    ],
  ));
}
