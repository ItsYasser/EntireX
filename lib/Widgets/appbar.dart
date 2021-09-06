import 'package:flutter/material.dart';

AppBar myAppBar(String title) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
  );
}
