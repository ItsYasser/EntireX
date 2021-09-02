import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String picture;
  PromoCard(this.picture);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 4, right: 4),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
            blurRadius: 2, color: (Colors.grey[350])!, offset: Offset(0, 3)),
      ]),
      child: Image(
        image: NetworkImage(picture),
        fit: BoxFit.fill,
      ),
    );
  }
}
