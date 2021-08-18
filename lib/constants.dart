import 'package:flutter/material.dart';

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
