import 'package:flutter/material.dart';

class SmallCategoriesWidget extends StatelessWidget {
  const SmallCategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text("Shoes"),
      avatar: Icon(Icons.shower_sharp),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
