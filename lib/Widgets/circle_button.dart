import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final Color backGroundColor;
  CircleButton(
      {required this.icon,
      this.iconColor = Colors.black,
      this.backGroundColor = Colors.black12});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(shape: BoxShape.circle, color: backGroundColor),
      child: Icon(
        icon,
        size: 20,
        color: iconColor,
      ),
    );
  }
}
