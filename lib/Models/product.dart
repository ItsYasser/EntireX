import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title, picture;
  final double price;
  bool isFavorite;
  int discount;

  Product({
    required this.id,
    required this.title,
    this.isFavorite = false,
    required this.picture,
    required this.price,
    this.discount = 0,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
