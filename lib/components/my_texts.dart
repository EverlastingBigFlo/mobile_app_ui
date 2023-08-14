import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;

  const MyTexts(
      {super.key, required this.color, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
      textScaleFactor: fontSize,
    );
  }
}
