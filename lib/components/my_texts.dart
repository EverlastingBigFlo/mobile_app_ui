import 'package:flutter/material.dart';

class MyTexts extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  
  const MyTexts(
      {super.key,
      required this.color,
      required this.text,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
      textScaleFactor: fontSize,
    );
  }
}
