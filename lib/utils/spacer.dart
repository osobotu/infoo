import 'package:flutter/material.dart';

class XSpacer extends StatelessWidget {
  const XSpacer({Key? key, required this.x}) : super(key: key);
  final double x;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: x,
    );
  }
}

class YSpacer extends StatelessWidget {
  const YSpacer({Key? key, required this.y}) : super(key: key);
  final double y;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: y,
    );
  }
}
