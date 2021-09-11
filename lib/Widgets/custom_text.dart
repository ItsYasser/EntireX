import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final bool underline;
  final EdgeInsets padding;
  // final int maxLine;

  CustomText({
    this.text = '',
    this.fontSize = 14,
    this.color = Colors.black,
    this.underline = false,
    this.padding = const EdgeInsets.only(),
    // this.maxLine = 1,

    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none,
        ),

        // maxLines: maxLine,
      ),
    );
  }
}
